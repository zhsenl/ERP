# -*- encoding : utf-8 -*-
class ForeignEnterprisesController < ApplicationController
  authorize_resource
  
  # GET /foreign_enterprises
  # GET /foreign_enterprises.json
  def index
    @foreign_enterprises = ForeignEnterprise.paginate(:page => params[:page],:per_page => 10, :order => "foreign_enterprises.updated_at DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @foreign_enterprises }
    end
  end
  
  # GET /foreign_enterprises/search.json
  def search
    term = params[:term]
    if term.blank?
      @foreign_enterprises = []
    else
      @foreign_enterprises = ForeignEnterprise.where("code like ? or name like ?", term + '%', '%' + term +'%')
    end

    respond_to do |format|
      format.json { render json: @foreign_enterprises }
    end
  end

  # GET /foreign_enterprises/1
  # GET /foreign_enterprises/1.json
  def show
    @foreign_enterprise = ForeignEnterprise.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @foreign_enterprise }
    end
  end
  
  # GET /foreign_enterprises/1/show_by_code.json
  # get foreign_enterprise by code
  def show_by_code
    @foreign_enterprise = ForeignEnterprise.find_by_code(params[:id])

    respond_to do |format|
      format.json { render json: @foreign_enterprise }
    end
  end

  # GET /foreign_enterprises/new
  # GET /foreign_enterprises/new.json
  def new
    @foreign_enterprise = ForeignEnterprise.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @foreign_enterprise }
    end
  end

  # GET /foreign_enterprises/1/edit
  def edit
    @foreign_enterprise = ForeignEnterprise.find(params[:id])
  end

  # POST /foreign_enterprises
  # POST /foreign_enterprises.json
  def create
    @foreign_enterprise = ForeignEnterprise.new(params[:foreign_enterprise])

    respond_to do |format|
      if @foreign_enterprise.save
        format.html { redirect_to @foreign_enterprise, notice: 'Foreign enterprise was successfully created.' }
        format.json { render json: @foreign_enterprise, status: :created, location: @foreign_enterprise }
      else
        format.html { render action: "new" }
        format.json { render json: @foreign_enterprise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /foreign_enterprises/1
  # PUT /foreign_enterprises/1.json
  def update
    @foreign_enterprise = ForeignEnterprise.find(params[:id])

    respond_to do |format|
      if @foreign_enterprise.update_attributes(params[:foreign_enterprise])
        format.html { redirect_to @foreign_enterprise, notice: 'Foreign enterprise was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @foreign_enterprise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foreign_enterprises/1
  # DELETE /foreign_enterprises/1.json
  def destroy
    @foreign_enterprise = ForeignEnterprise.find(params[:id])
    @foreign_enterprise.destroy

    respond_to do |format|
      format.html { redirect_to foreign_enterprises_url }
      format.json { head :no_content }
    end
  end
end
