# -*- encoding : utf-8 -*-

class ApplicationCargosController < ApplicationController
  before_filter :init

  def init
    if params[:id]
      @application_cargo = ApplicationCargo.find(params[:id])
      @application = @application_cargo.application
    elsif params[:application_id]
      @application = Application.find(params[:application_id])
    else
      @application = Application.find(params[:application_cargo][:application_id])
    end
  end

  # GET /application_cargos
  # GET /application_cargos.json
  def index
    @application_cargos = @application.application_cargos
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @application_cargos }
    end
  end

  # GET /application_cargos/1
  # GET /application_cargos/1.json
  def show
    @application_cargo = ApplicationCargo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @application_cargo }
    end
  end

  # GET /application_cargos/new
  # GET /application_cargos/new.json
  def new
    application_cargos =  params[:in_out] == '0'? @application.application_cargos.out : @application.application_cargos.in
    @application_cargo = ApplicationCargo.new(:application_id => @application.id,
                                              :in_out => params[:in_out],
                                              :no => application_cargos.size + 1)

    if @application_cargo.no > 20
      redirect_to application_cargos_url(:application_id => @application.id),:flash => {:attention => '不能超过20项商品'}
    end
  end

  # GET /application_cargos/1/edit
  def edit
  end

  # POST /application_cargos
  # POST /application_cargos.json
  def create
    @application_cargo = ApplicationCargo.new(params[:application_cargo])

    respond_to do |format|
      if @application_cargo.save
        format.html { redirect_to @application_cargo, notice: '申请表货物创建成功' }
        format.json { render json: @application_cargo, status: :created, location: @application_cargo }
      else
        format.html { render action: "new" }
        format.json { render json: @application_cargo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /application_cargos/1
  # PUT /application_cargos/1.json
  def update
    respond_to do |format|
      if @application_cargo.update_attributes(params[:application_cargo])
        format.html { redirect_to @application_cargo, :flash => {:success => "修改成功"} }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @application_cargo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /application_cargos/1
  # DELETE /application_cargos/1.json
  def destroy
    @application_cargo.destroy

    respond_to do |format|
      format.html { redirect_to application_cargos_url(:application_id => @application_cargo.application_id), :flash => {:success => "删除成功"} }
      format.json { head :no_content }
    end
  end
end
