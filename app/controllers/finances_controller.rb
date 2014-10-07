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
    #if cookies[:check_declaration_condition] #and params[:page] #and  cookies[:checkout_enterprise_condition]
    #                                         #@finance_declarations = Declaration.joins(:finances).where(finances:{review: 2}).where(cookies[:check_declaration_condition]).page(params[:page]).order("declare_date asc")
    #  @finance_declarations = Declaration.joins(:finances).where(finances:{review: 2}).where(eval(cookies[:check_declaration_condition])).order("declare_date asc")
    #end
  end



  #财务结算的搜索
  def search
    time = (params[:from].present? and params[:from].present?) ? (params[:from]..params[:to]) : ''
    enterprise_id = Enterprise.find_by_code(params[:enterprise_id]).id rescue params[:enterprise_id]
    declaration_condition =  {declare_date: time, enterprise_id: enterprise_id,
                              entry_no: params[:entry_no],load_port: params[:load_port]}.select { |key,value| value.present? }
    finance_condition =  {is_made: params[:is_made], review: params[:review]}.select { |key,value| value.present? }

    @finance_declarations = Declaration.joins(:finances).where(declaration_condition).where( finances:finance_condition).page(params[:page]).order("declare_date asc")
    #@finances = Finance.joins(:declarations).where(finance_condition, declarations:declaration_condition)
    if @finance_declarations.size != 0
      cookies[:declaration_condition] = {value: declaration_condition, expires: 1.day.from_now}
      cookies[:finance_condition] = {value: finance_condition, expires: 1.day.from_now}
    end
    render :partial =>"finance_search_result"
  end

  def pay
    time = (params[:from].present? and params[:from].present?) ? (params[:from]..params[:to]) : ''
    enterprise_id = Enterprise.find_by_code(params[:enterprise_id]).id rescue params[:enterprise_id]
    declaration_condition =  {declare_date: time, enterprise_id: enterprise_id,
                              entry_no: params[:entry_no],load_port: params[:load_port]}.select { |key,value| value.present? }
    finance_condition =  {is_made: params[:is_made], review: params[:review]}.select { |key,value| value.present? }

    @finance_declarations = Declaration.joins(:finances).where(declaration_condition).where( finances:finance_condition).page(params[:page]).order("declare_date asc")
    #@finances = Finance.joins(:declarations).where(finance_condition, declarations:declaration_condition)
    if @finance_declarations.size != 0
      cookies[:declaration_condition] = {value: declaration_condition, expires: 1.day.from_now}
      cookies[:finance_condition] = {value: finance_condition, expires: 1.day.from_now}
      # 将is_paid 字段设为true
      @finance_declarations.each do |finance_declaration|
         finance_declaration.finances.first.update_attribute(:is_paid, true)
      end
    end
    render :partial =>"finance_search_result"
  end

  #财务统计的搜索
  def search2
    time = (params[:from].present? and params[:from].present?) ? (params[:from]..params[:to]) : ''
    checkout_enterprise_condition = {code: params[:checkout_enterprise_code]}.select { |key,value| value.present? }
    #enterprise_id = Enterprise.find_by_code(params[:enterprise_code]).id rescue params[:enterprise_code]
    #declaration_condition = {declare_date: time, load_port: params[:load_port], enterprise_id: enterprise_id}.select { |key,value| value.present? }
    declaration_condition = {declare_date: time, load_port: params[:load_port]}.select { |key,value| value.present? }
    @finance_declarations = Declaration.joins( :checkout_enterprises).joins(:finances).where(finances:{review: 2}).where(declaration_condition).where(checkout_enterprises:checkout_enterprise_condition).order("declare_date, finances.combine_no asc")
    if @finance_declarations.size != 0
      cookies[:checkout_enterprise_condition] =  {value: checkout_enterprise_condition, expires: 1.day.from_now}
      cookies[:check_declaration_condition] = {value: declaration_condition, expires: 1.day.from_now}
      cookies[:checkout_enterprise_code] = {value: params[:checkout_enterprise_code], expires: 1.day.from_now}
      cookies[:recipient_enterprise_code] = {value: params[:recipient_enterprise_code], expires: 1.day.from_now}
      cookies[:from] = {value: params[:from], expires: 1.day.from_now}
      cookies[:to] = {value: params[:to], expires: 1.day.from_now}
      cookies[:load_port] =    {value: params[:load_port], expires: 1.day.from_now}
    end
    render :partial =>"check_result"
  end

  def print
    if cookies[:check_declaration_condition]  and  cookies[:checkout_enterprise_condition]
      @finance_declarations = Declaration.joins( :checkout_enterprises).joins(:finances).where(finances:{review: 2}).where(eval(cookies[:check_declaration_condition])).where(checkout_enterprises:eval(cookies[:checkout_enterprise_condition])).order("declare_date, finances.combine_no asc")
      statistics(cookies[:check_declaration_condition])
      @download = false
      respond_to do |format|
        format.html {render :layout => 'print'}
        format.xls{
          @download = true
          send_data(render_to_string(:template => "finances/print.xls.erb") , :filename =>  Enterprise.find_by_code(cookies[:checkout_enterprise_code]).name + Time.now.strftime('%Y%m%d') + '.xls', :type => 'application/vnd.ms-excel; charset=utf-8; header=present')
          #send_data(render_to_string , :filename =>  Enterprise.find_by_code(cookies[:checkout_enterprise_code]).name + Time.now.strftime('%Y%m%d') + '.xls', :type => "application/vnd.ms-excel; charset=utf-8; header=present")
        }
      end
    end
  end

  #营业统计
  def income
    if cookies[:income_declaration_condition] #and params[:page] #and  cookies[:income_enterprise_condition]
                                              #@finance_declarations = Declaration.joins(:finances).where(finances:{review: 2}).where(cookies[:income_declaration_condition]).page(params[:page]).order("declare_date asc")
      @finance_declarations = Declaration.joins(:finances).where(finances:{review: 2, is_paid: true}).where(eval(cookies[:income_declaration_condition])).order("declare_date asc")
      @check_methods = CheckMethod.where({from: cookies[:from], to: cookies[:to]})
      statistics(cookies[:income_declaration_condition])
    end
  end
  #营业统计的打印
  def print2
    if cookies[:finance_fee_names] and cookies[:col_total_prices] #and params[:page] #and  cookies[:income_enterprise_condition]
                                                                  #@finance_declarations = Declaration.joins(:finances).where(finances:{review: 2}).where(cookies[:income_declaration_condition]).page(params[:page]).order("declare_date asc")
      @check_methods = CheckMethod.where({from: cookies[:from], to: cookies[:to]})
      render :layout => 'print'
    end
  end
  #营业统计的搜索
  def search3
    time = (params[:from].present? and params[:from].present?) ? (params[:from]..params[:to]) : ''
    declaration_condition = {declare_date: time, load_port: params[:load_port]}.select { |key,value| value.present? }
    @finance_declarations = Declaration.joins(:finances).where(finances:{review: 2, is_paid: true}).where(declaration_condition).order("declare_date asc")
    @check_methods = CheckMethod.where({from: params[:from], to: params[:to]})
    if @finance_declarations.size != 0  and !declaration_condition.empty?
      cookies[:income_declaration_condition] = {value: declaration_condition, expires: 1.day.from_now}
      cookies[:from] = {value: params[:from], expires: 1.day.from_now}
      cookies[:to] = {value: params[:to], expires: 1.day.from_now}
      cookies[:load_port] = {value: params[:load_port], expirres: 1.day.from_now}
      statistics(declaration_condition.to_s)
    end
    render :partial =>"income_result"
  end

  # review = {1 => '未审核', 2 => '已审核', 3 => '退审单', 4 => '退审单（留底）'
  # statistics --> 把账单分成各个 page页面，方便打印
  def statistics(declaration_condition)    #todo

    @page_size = 20     #page_size --> 每页的项目数  pages_size --> 总共页数
    @pages = Array.new((@finance_declarations.size - 1) / @page_size + 1 ) { Array.new }    # 最后的 + 1是预留的
    page_item_count = 0 #每页的累计项目数
    pages_index = 0
    each_page_index = 0
    i = 0
    num = @finance_declarations.size
    while i < num do
      finance_declaration_combined = []
      finance_declaration_combined << @finance_declarations[i]
      combine_no = @finance_declarations[i].finances.first.combine_no
      j = i + 1
      while j < num do
        cn = @finance_declarations[j].finances.first.combine_no
        if !cn.blank? and cn == combine_no
          finance_declaration_combined << @finance_declarations[j]
          j += 1
        else
          break
        end
      end

      finance_declaration_combined_size = finance_declaration_combined.size
      if page_item_count + finance_declaration_combined_size <= @page_size + 2  #每页允许可能多两个
        page_item_count = page_item_count + finance_declaration_combined_size
        @pages[pages_index][each_page_index] = finance_declaration_combined
        each_page_index = each_page_index + 1
      else  #本页不够放，放在下一页
        pages_index = pages_index + 1
        each_page_index = 0
        page_item_count = finance_declaration_combined_size
        @pages[pages_index][each_page_index] = finance_declaration_combined
        each_page_index = each_page_index + 1
      end
      i = j
    end

    @pages_size = pages_index + 1

    #combine_size = 0   #合并的项目数
    #@finance_declarations.each do |finance_declaration|
    #  logger.warn finance_declaration.finances.first.combine_no.to_s + " "  + finance_declaration.entry_no
    #
    #  combine_no = finance_declaration.finances.first.combine_no #合并号。如果没有的话，为空
    #  finance_declaration_combined = []   #page 的每一项都是合并的账单(可能只有一个)
    #  if !combine_no.blank?    #有多个账单合并在一起
    #                           #finance_declaration_combined = Declaration.joins(:finances).where(finances:{review: 2,combine_no: combine_no}).where(eval(declaration_condition)).order("declare_date asc")
    #    combine_size = finance_declaration_combined.size - 1
    #  else   #只有一个账单
    #    finance_declaration_combined << finance_declaration
    #  end
    #  finance_declaration_combined_size = finance_declaration_combined.size
    #  if page_item_count + finance_declaration_combined_size <= @page_size + 2  #每页允许可能多两个
    #    page_item_count = page_item_count + finance_declaration_combined_size
    #    @pages[pages_index][each_page_index] = finance_declaration_combined
    #    each_page_index = each_page_index + 1
    #  else  #本页不够放，放在下一页
    #    pages_index = pages_index + 1
    #    each_page_index = 0
    #    page_item_count = finance_declaration_combined_size
    #    @pages[pages_index][each_page_index] = finance_declaration_combined
    #  end
    #end
    #@pages_size = pages_index + 1
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
    #if  cookies[:declaration_condition] and cookies[:finance_condition]
    #  @finance_declarations = Declaration.joins(:finances).where(eval(cookies[:declaration_condition])).where( finances:eval(cookies[:finance_condition])).page(params[:page]).order("declare_date asc")
    #end
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
