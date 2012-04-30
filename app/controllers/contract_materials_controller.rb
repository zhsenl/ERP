# -*- encoding : utf-8 -*-
class ContractMaterialsController < ApplicationController
  before_filter :init
  
  def init
    if params[:id]
      @contract_material = ContractMaterial.find(params[:id])
    elsif params[:contract_id]
      @contract = Contract.find_by_id(params[:contract_id])
    end
  end
  
  # GET /contract_materials
  # GET /contract_materials.json
  def index
    @contract_materials = @contract.contract_materials.page(params[:page]).order("no")
  end
  
    # GET /contract_products/search.json
  def search
    @term = params[:term]
    if @term.blank?
      @contract_materials = []
    else
      term = '%' + @term + '%'
      contract_id = @contract ? @contract.id : 0
      @contract_materials = ContractMaterial.where("contract_id = ? and (no like ? or code like ? or name like ?)", contract_id, term, term, term)
    end

    respond_to do |format|
      format.json { render json: @contract_materials }
    end
  end

  # GET /contract_materials/1
  # GET /contract_materials/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contract_material }
    end
  end

  # GET /contract_materials/new
  # GET /contract_materials/new.json
  def new    
    @contract_material = ContractMaterial.new
    @contract_material.quantity = 0
    @contract_material.contract = @contract
    @contract_material.tax_mode = 3
    @contract_material.no = @contract.contract_materials.size + 1  
  end

  # GET /contract_materials/1/edit
  def edit
  end

  # POST /contract_materials
  # POST /contract_materials.json
  def create
    @contract_material = ContractMaterial.new(params[:contract_material])

    respond_to do |format|
      if @contract_material.save
        format.html { redirect_to new_contract_material_url(:contract_id => @contract_material.contract_id), flash: {:success => 'Contract material was successfully created.'} }
        format.json { render json: @contract_material, status: :created, location: @contract_material }
      else
        format.html { render action: "new" }
        format.json { render json: @contract_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contract_materials/1
  # PUT /contract_materials/1.json
  def update
    respond_to do |format|
      if @contract_material.update_attributes(params[:contract_material])
        format.html { redirect_to @contract_material, notice: 'Contract material was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contract_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contract_materials/1
  # DELETE /contract_materials/1.json
  def destroy
    @contract_material.destroy

    respond_to do |format|
      format.html { redirect_to contract_materials_url(:contract_id => @contract_material.contract_id) }
      format.json { head :no_content }
    end
  end
end
