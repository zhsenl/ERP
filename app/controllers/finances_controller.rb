# -*- encoding : utf-8 -*-
class FinancesController < ApplicationController

  def combine
    Declaration.find(params[:id]).finances.first.update_attribute(:combine_no, params[:no])
    respond_to do |format|
      format.json { render json: {} }
    end
  end

  def uncombine
    Declaration.find(params[:id]).finances.first.update_attribute(:combine_no, "")
    respond_to do |format|
      format.json { render json: {} }
    end
  end

  def check
    if session[:check_declaration_condition] #and params[:page] #and  session[:checkout_enterprise_condition]
        #@finance_declarations = Declaration.joins(:finances).where(finances:{review: 2}).where(session[:check_declaration_condition]).page(params[:page]).order("declare_date asc")
        @finance_declarations = Declaration.joins(:finances).where(finances:{review: 2}).where(session[:check_declaration_condition]).order("declare_date asc")
    end
  end

  #财务统计的搜索
  def search2
    time = (params[:from].present? and params[:from].present?) ? (params[:from]..params[:to]) : ''
    #checkout_enterprise_condition = {code: Enterprise.find(params[:enterprise_id]).code}.select { |key,value| value.present? }
    #declaration_condition = {declare_date: time, load_port: params[:load_port]}.select { |key,value| value.present? }
    #@finance_declarations = Declaration.joins( :checkout_enterprises).joins(:finances).where(finances:{review: 2}).where(declaration_condition).where(checkout_enterprises:checkout_enterprise_condition).page(params[:page]).order("declare_date DESC")
    declaration_condition = {declare_date: time, load_port: params[:load_port], enterprise_id: params[:enterprise_id]}.select { |key,value| value.present? }
    #@finance_declarations = Declaration.joins(:finances).where(finances:{review: 2}).where(declaration_condition).page(params[:page]).order("declare_date asc")
    @finance_declarations = Declaration.joins(:finances).where(finances:{review: 2}).where(declaration_condition).order("declare_date asc")
    if @finance_declarations.size != 0
      #session[:checkout_enterprise_condition] = checkout_enterprise_condition
      session[:check_declaration_condition] = declaration_condition
      session[:enterprise_id] = params[:enterprise_id]
      session[:from] = params[:from]
      session[:to] = params[:to]
    end
    render :partial =>"check_result"
  end

  def print
    if session[:check_declaration_condition]  #and  session[:checkout_enterprise_condition]
      #@finance_declarations = Declaration.joins(:finances).where(finances:{review: 2}).where(session[:check_declaration_condition]).order("declare_date asc")
      @finance_declarations = Declaration.joins(:finances).where(finances:{review: 2}).where(session[:check_declaration_condition]).order("declare_date asc, finances.combine_no")
      @page_size = 16
      @pages = Array.new((@finance_declarations.size - 1) / @page_size + 1 + 10) { Array.new }    # 最后的 + 10是预留的
      #@finance_declarations.each_with_index do |finance_declaration, index|
      #  @pages[index / @page_size][index % @page_size] = []
      #end
      page_item_count = 0
      pages_index = 0
      each_page_index = 0
      @finance_declarations.each_with_index do |finance_declaration, index|
        combine_no = finance_declaration.finances.first.combine_no
        finance_declaration_combined = []
        if !combine_no.blank?
          finance_declaration_combined = Declaration.joins(:finances).where(finances:{review: 2,combine_no: combine_no}).where(session[:check_declaration_condition]).order("declare_date asc")
        else
          finance_declaration_combined << finance_declaration
        end
        finance_declaration_combined_size = finance_declaration_combined.size
        if page_item_count + finance_declaration_combined_size <= @page_size + 1 #每页允许可能多一个
          page_item_count = page_item_count + finance_declaration_combined_size
          @pages[pages_index][each_page_index] = finance_declaration_combined
          each_page_index = each_page_index + 1
        else
          pages_index = pages_index + 1
          each_page_index = 0
          page_item_count = finance_declaration_combined_size
          @pages[pages_index][each_page_index] = finance_declaration_combined
        end
      end
      @pages_size = pages_index + 1
      render :layout => 'print'
    end
  end

  #财务结算的搜索
  def search
    time = (params[:from].present? and params[:from].present?) ? (params[:from]..params[:to]) : ''
    declaration_condition =  {declare_date: time, enterprise_id: params[:enterprise_id],
                              entry_no: params[:entry_no],load_port: params[:load_port]}.select { |key,value| value.present? }
    finance_condition =  {is_made: params[:is_made], review: params[:review]}.select { |key,value| value.present? }

    @finance_declarations = Declaration.joins(:finances).where(declaration_condition).where( finances:finance_condition).page(params[:page]).order("declare_date asc")
    #@finances = Finance.joins(:declarations).where(finance_condition, declarations:declaration_condition)
    if @finance_declarations.size != 0
      session[:declaration_condition] = declaration_condition
      session[:finance_condition] = finance_condition
    end
    render :partial =>"finance_search_result"
  end

  def make
    @finance = Finance.find(params[:id])
    respond_to do |format|

      if @finance.update_attributes("is_made"=> true, "maker" => current_user.id)
        format.html { redirect_to @finance, notice: '成功制作账单' }
        format.json { head :no_content }
      else
        format.html { render action: "show" }
        format.json { render json: @finance.errors, status: :unprocessable_entity }
      end
    end
  end

  def review
    @finance = Finance.find(params[:id])
    respond_to do |format|

      if @finance.update_attributes("review" => 2, "reviewer" => current_user.id)
        format.html { redirect_to @finance, notice: '审核成功' }
        format.json { head :no_content }
      else
        format.html { render action: "show" }
        format.json { render json: @finance.errors, status: :unprocessable_entity }
      end
    end
  end

  def cancel
    @finance = Finance.find(params[:id])
    respond_to do |format|
      if @finance.update_attributes("review" => 3, "reviewer" => current_user.id)
        format.html { redirect_to @finance, notice: '退审成功' }
        format.json { head :no_content }
      else
        format.html { render action: "show" }
        format.json { render json: @finance.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /finances
  # GET /finances.json
  def index
    if  session[:declaration_condition] and session[:finance_condition]
      @finance_declarations = Declaration.joins(:finances).where( session[:declaration_condition]).where( finances:session[:finance_condition]).page(params[:page]).order("declare_date asc")
    end
  end

  # GET /finances/1
  # GET /finances/1.json
  def show
    @finance = Finance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @finance }
    end
  end

  # GET /finances/new
  # GET /finances/new.json
  def new
    @finance = Finance.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @finance }
    end
  end

  # GET /finances/1/edit
  def edit
    @finance = Finance.find(params[:id])
  end

  # POST /finances
  # POST /finances.json
  def create
    @finance = Finance.new(params[:finance])

    respond_to do |format|
      if @finance.save
        format.html { redirect_to @finance, notice: 'Finance was successfully created.' }
        format.json { render json: @finance, status: :created, location: @finance }
      else
        format.html { render action: "new" }
        format.json { render json: @finance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /finances/1
  # PUT /finances/1.json
  def update
    @finance = Finance.find(params[:id])

    respond_to do |format|
      if @finance.update_attributes(params[:finance])
        format.html { redirect_to @finance, notice: 'Finance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @finance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finances/1
  # DELETE /finances/1.json
  def destroy
    @finance = Finance.find(params[:id])
    @finance.destroy

    respond_to do |format|
      format.html { redirect_to finances_url }
      format.json { head :no_content }
    end
  end
end
