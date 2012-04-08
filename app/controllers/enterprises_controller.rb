# -*- encoding : utf-8 -*-
class EnterprisesController < ApplicationController
  authorize_resource
  # GET /enterprises
  # GET /enterprises.json
  def index
    @enterprises = Enterprise.paginate(:page => params[:page],:per_page => 10, :order => "enterprises.updated_at DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @enterprises }
    end
  end
  
  # GET /enterprises/search.json
  def search
    term = params[:term]
    if term.blank?
      @enterprises = []
    else
      @enterprises = Enterprise.where("code like ? or name like ?", term + '%', '%' + term +'%')
    end

    respond_to do |format|
      format.json { render json: @enterprises }
    end
  end

  # GET /enterprises/1
  # GET /enterprises/1.json
  def show
    @enterprise = Enterprise.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @enterprise }
    end
  end
  
  # GET /enterprises/1/show_by_code.json
  # get enterprise by code
  def show_by_code
    @enterprise = Enterprise.find_by_code(params[:id])

    respond_to do |format|
      format.json { render json: @enterprise }
    end
  end

  # GET /enterprises/new
  # GET /enterprises/new.json
  def new
    @enterprise = Enterprise.new
    @enterprise.enterprise_custom_option = EnterpriseCustomOption.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @enterprise }
    end
  end

  # GET /enterprises/1/edit
  def edit
    @enterprise = Enterprise.find(params[:id])
    @enterprise.build_enterprise_customs_option if @enterprise.enterprise_custom_option.nil?
  end

  # POST /enterprises
  # POST /enterprises.json
  def create
    @enterprise = Enterprise.new(params[:enterprise])

    respond_to do |format|
      if @enterprise.save
        format.html { redirect_to @enterprise, flash: {:success => '成功新建企业.'} }
        format.json { render json: @enterprise, status: :created, location: @enterprise }
      else
        format.html { render action: "new" }
        format.json { render json: @enterprise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /enterprises/1
  # PUT /enterprises/1.json
  def update
    @enterprise = Enterprise.find(params[:id])

    respond_to do |format|
      if @enterprise.update_attributes(params[:enterprise])
        format.html { redirect_to @enterprise, flash: {:success => '更新企业资料成功.'} }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @enterprise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enterprises/1
  # DELETE /enterprises/1.json
  def destroy
    @enterprise = Enterprise.find(params[:id])
    @enterprise.destroy

    respond_to do |format|
      format.html { redirect_to enterprises_url }
      format.json { head :no_content }
    end
  end
end
