# -*- encoding : utf-8 -*-

class BillsController < ApplicationController
  include ApplicationHelper,  PrintHelper

  before_filter :init

  def init
    if params[:id]
      @bill = Bill.find(params[:id])
      @sys_type = @bill.sys_type
    else
      @sys_type = params[:sys_type] || params[:bill][:sys_type] rescue nil
    end
    @mark = @sys_type
  end


  # GET /bills
  # GET /bills.json
  def index
    if current_enterprise
      @bills =  Bill.where("enterprise_id = ? and sys_type = ?", current_enterprise.id, @sys_type).page(params[:page]).order("updated_at DESC")
    else
      @bills = Enterprise.new.bills.page(params[:page])
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bills }
    end
  end

  # GET /bills/1
  # GET /bills/1.json
  def show
    authorize! :show, @bill
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bill }
    end
  end

  # GET /bills/new
  # GET /bills/new.json
  def new
    if current_enterprise
      pre_entry_no = Time.now.strftime('%Y%m%d%H%M%S') + system_serial_no
      @bill = Bill.new(:enterprise_id => current_enterprise.id,
                                     :sys_type => @sys_type,
                                     :agent_code => "4419980074",
                                     :in_agent_code => "4419980074" ,
                                     :pre_entry_no =>  pre_entry_no
      )
    else
      redirect_to bills_path, notice: '请选择要操作的企业'
    end
  end

  # GET /bills/1/edit
  def edit
  end

  # POST /bills
  # POST /bills.json
  def create
    @bill = Bill.new(params[:bill])
    respond_to do |format|
      if @bill.save
        format.html { redirect_to @bill, notice: 'Bill was successfully created.' }
        format.json { render json: @bill, status: :created, location: @bill }
      else
        format.html { render action: "new" }
        format.json { render json: @bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bills/1
  # PUT /bills/1.json
  def update
    respond_to do |format|
      if @bill.update_attributes(params[:bill])
        format.html { redirect_to @bill, notice: 'Bill was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bills/1
  # DELETE /bills/1.json
  def destroy
    @bill.destroy
    respond_to do |format|
      format.html { redirect_to bills_url }
      format.json { head :no_content }
    end
  end

  def print_bill
    @out_bill_cargos = @bill.bill_cargos.out
    @out_groups = Array.new((@out_bill_cargos.size - 1) / 5 + 1) { Array.new }
    @out_bill_cargos.each_with_index do |bill_cargo, index|
      @out_groups[index / 5][index % 5] = bill_cargo
    end
    @in_bill_cargos = @bill.bill_cargos.in
    @in_groups = Array.new((@in_bill_cargos.size - 1) / 5 + 1) { Array.new }
    @in_bill_cargos.each_with_index do |bill_cargo, index|
      @in_groups[index / 5][index % 5] = bill_cargo
    end
    @title = '打印申请表'
    render :layout => 'print'
  end

end
