# -*- encoding : utf-8 -*-
class FinancesController < ApplicationController

  def check
    if  session[:checkout_enterprise_condition] and session[:check_declaration_condition]
      @finance_declarations = Declaration.joins( :checkout_enterprises).where(session[:check_declaration_condition]).where(checkout_enterprises:session[:checkout_enterprise_condition]).order("declare_date DESC")
    end
  end

  #财务统计的搜索
  def search2
    time = (params[:from].present? and params[:from].present?) ? (params[:from]..params[:to]) : ''
    checkout_enterprise_condition = {code: Enterprise.find(params[:enterprise_id]).code}.select { |key,value| value.present? }
    declaration_condition = {declare_date: time, load_port: params[:load_port]}.select { |key,value| value.present? }
    @finance_declarations = Declaration.joins( :checkout_enterprises).where(declaration_condition).where(checkout_enterprises:checkout_enterprise_condition).order("declare_date DESC")
    session[:checkout_enterprise_condition] = checkout_enterprise_condition
    session[:check_declaration_condition] = declaration_condition
    render :partial =>"check_result"
  end

  def print

  end

  #财务结算的搜索
  def search
    time = (params[:from].present? and params[:from].present?) ? (params[:from]..params[:to]) : ''
    declaration_condition =  {declare_date: time, enterprise_id: params[:enterprise_id],
                              entry_no: params[:entry_no],load_port: params[:load_port]}.select { |key,value| value.present? }
    finance_condition =  {is_made: params[:is_made], review: params[:review]}.select { |key,value| value.present? }
    session[:declaration_condition] = declaration_condition
    session[:finance_condition] = finance_condition
    @finance_declarations = Declaration.joins(:finances).where(declaration_condition).where( finances:finance_condition).order("declare_date DESC")
    #@finances = Finance.joins(:declarations).where(finance_condition, declarations:declaration_condition)
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
      @finance_declarations = Declaration.joins(:finances).where( session[:declaration_condition]).where( finances:session[:finance_condition]).order("declare_date DESC")
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
