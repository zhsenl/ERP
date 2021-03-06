# -*- encoding : utf-8 -*-

class ApplicationsController < ApplicationController
  include ApplicationHelper, ApplicationsHelper, PrintHelper

  before_filter :init

  def init
    if params[:id]
      @application = Application.find(params[:id])
    end
  end


  # GET /applications
  # GET /applications.json
  def index
    if current_enterprise
      @applications =  Application.where("enterprise_id = ? ", current_enterprise.id).page(params[:page]).order("updated_at DESC")
    else
      @applications = Enterprise.new.applications.page(params[:page])
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @applications }
    end
  end

  # GET /applications/1
  # GET /applications/1.json
  def show
    authorize! :show, @application
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @application }
    end
  end

  # GET /applications/new
  # GET /applications/new.json
  def new
    if current_enterprise
      pre_entry_no = Time.now.strftime('%Y%m%d%H%M%S') + system_serial_no
      @application = Application.new(:enterprise_id => current_enterprise.id,
                                     :lice_no => "人工审批" ,
                                     :in_lice_no => "人工审批" ,
                                     :pre_entry_no =>  pre_entry_no
      )
    else
      redirect_to applications_path, notice: '请选择要操作的企业'
    end
  end

  # GET /applications/1/edit
  def edit
    authorize! :edit, @application
  end

  # POST /applications
  # POST /applications.json
  def create
    @application = Application.new(params[:application])
    authorize! :create, @application
    respond_to do |format|
      if @application.save
        format.html { redirect_to @application, notice: '申请表创建成功' }
        format.json { render json: @application, status: :created, location: @application }
      else
        format.html { render action: "new" }
        format.json { render json: @application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /applications/1
  # PUT /applications/1.json
  def update
    authorize! :update, @application
    respond_to do |format|
      if @application.update_attributes(params[:application])
        format.html { redirect_to @application, notice: '申请表更新成功.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applications/1
  # DELETE /applications/1.json
  def destroy
    authorize! :destory, @application
    @application.destroy
    respond_to do |format|
      format.html { redirect_to applications_url }
      format.json { head :no_content }
    end
  end

  def print_application
    @out_application_cargos = @application.application_cargos.out
    @out_groups = Array.new((@out_application_cargos.size - 1) / 5 + 1) { Array.new }
    @out_application_cargos.each_with_index do |application_cargo, index|
      @out_groups[index / 5][index % 5] = application_cargo
    end
    @in_application_cargos = @application.application_cargos.in
    @in_groups = Array.new((@in_application_cargos.size - 1) / 5 + 1) { Array.new }
    @in_application_cargos.each_with_index do |application_cargo, index|
      @in_groups[index / 5][index % 5] = application_cargo
    end
    @title = '打印申请表'
    render :layout => 'print'
  end

  # GET /applications/1/declare.json
  def declare
    authorize! :declare, @application
    if generate_application_xml(@application.id, params[:sort_flag])
      result = {:xml_content => @xml_content}
    else
      result = {}
    end
    puts @xml_content
    respond_to do |format|
      format.json { render json: result }
    end
  end

  def sign
    puts params[:signed_data]
    if sign_application_xml(@application.id, params[:sort_flag], params[:signed_data], params[:card_id], params[:cert_no])
      result = {:type => "success", :content => "已经成功生成报文，请稍后再查询申报结果"}
    else
      result = {:type => "error", :content => "生成报文失败"}
    end
    respond_to do |format|
      format.json { render json: result }
    end
  end

end
