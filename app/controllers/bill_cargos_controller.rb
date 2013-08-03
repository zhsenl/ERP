# -*- encoding : utf-8 -*-

class BillCargosController < ApplicationController
  before_filter :init

  def init
    if params[:id]
      @bill_cargo = BillCargo.find(params[:id])
      @bill = @bill_cargo.bill
      @sys_type = @bill_cargo.bill.sys_type
    elsif params[:bill_id]
      @bill = Bill.find(params[:bill_id])
      @sys_type = @bill.sys_type
    else
      @bill = Bill.find(params[:bill_cargo][:bill_id])
      @sys_type = @bill.sys_type
    end
    @mark = @sys_type
  end

  # GET /bill_cargos
  # GET /bill_cargos.json
  def index
    @bill_cargos = @bill.bill_cargos

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bill_cargos }
    end
  end

  # GET /bill_cargos/1
  # GET /bill_cargos/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bill_cargo }
    end
  end

  # GET /bill_cargos/new
  def new
    bill_cargos =  params[:in_out] == '0'? @bill.bill_cargos.out : @bill.bill_cargos.in
    @bill_cargo = BillCargo.new(:bill_id => @bill.id,
                                :in_out => params[:in_out],
                                              :quantity1 => 0,
                                              :no => bill_cargos.size + 1)

    if @bill_cargo.no > 20
      redirect_to bill_cargos_url(:bill_id => @bill.id),:flash => {:attention => '不能超过20项商品'}
    end

  end

  # GET /bill_cargos/1/edit
  def edit
  end

  # POST /bill_cargos
  # POST /bill_cargos.json
  def create
    @bill_cargo = BillCargo.new(params[:bill_cargo])

    respond_to do |format|
      if @bill_cargo.save
        format.html { redirect_to @bill_cargo, :flash => {:success => '保存成功'} }
        format.json { render json: @bill_cargo, status: :created, location: @bill_cargo }
      else
        format.html { render action: "new" }
        format.json { render json: @bill_cargo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bill_cargos/1
  # PUT /bill_cargos/1.json
  def update
    respond_to do |format|
      if @bill_cargo.update_attributes(params[:bill_cargo])
        format.html { redirect_to @bill_cargo, :flash => {:success => "修改成功"} }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bill_cargo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bill_cargos/1
  # DELETE /bill_cargos/1.json
  def destroy
    @bill_cargo.destroy

    respond_to do |format|
      format.html { redirect_to bill_cargos_url(:bill_id => @bill_cargo.bill_id), :flash => {:success => "删除成功"} }
      format.json { head :no_content }
    end
  end
end
