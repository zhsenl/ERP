# -*- encoding : utf-8 -*-
class ContractMaterialsController < ApplicationController
  # GET /contract_materials
  # GET /contract_materials.json
  def index
    @contract = Contract.find_by_id(params[:contract_id])
    if @contract
      @contract_materials = @contract.contract_materials.page(params[:page]).order("no")
    else
      redirect_to contracts_path, notice: '请选择合同头'
    end  
  end

  # GET /contract_materials/1
  # GET /contract_materials/1.json
  def show
    @contract_material = ContractMaterial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contract_material }
    end
  end

  # GET /contract_materials/new
  # GET /contract_materials/new.json
  def new    
    @contract = Contract.find_by_id(params[:contract_id])
    if @contract
      @contract_material = ContractMaterial.new
      @contract_material.contract_id = @contract.id
      @contract_material.tax_mode = 3
      @contract_material.no = @contract.contract_materials.size + 1
    else
      redirect_to contracts_path, notice: '请选择合同头'
    end  
  end

  # GET /contract_materials/1/edit
  def edit
    @contract_material = ContractMaterial.find(params[:id])
  end

  # POST /contract_materials
  # POST /contract_materials.json
  def create
    @contract_material = ContractMaterial.new(params[:contract_material])

    respond_to do |format|
      if @contract_material.save
        format.html { redirect_to @contract_material, notice: 'Contract material was successfully created.' }
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
    @contract_material = ContractMaterial.find(params[:id])

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
    @contract_material = ContractMaterial.find(params[:id])
    @contract_material.destroy

    respond_to do |format|
      format.html { redirect_to contract_materials_url }
      format.json { head :no_content }
    end
  end
end
