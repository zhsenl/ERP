# -*- encoding : utf-8 -*-
class ContractProductionsController < ApplicationController
  # GET /contract_productions
  # GET /contract_productions.json
  def index
    @contract = Contract.find_by_id(params[:contract_id])
    if @contract
      @contract_productions = @contract.contract_productions.paginate(:page => params[:page], :per_page => 10, :order => "contract_productions.no")
    else
      redirect_to contracts_path, notice: '请选择合同头'
    end  
  end

  # GET /contract_productions/1
  # GET /contract_productions/1.json
  def show
    @contract_production = ContractProduction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contract_production }
    end
  end

  # GET /contract_productions/new
  # GET /contract_productions/new.json
  def new
    @contract = Contract.find_by_id(params[:contract_id])
    if @contract
      @contract_production = ContractProduction.new
      @contract_production.contract_id = @contract.id
      @contract_production.tax_mode = 3
      @contract_production.no = @contract.contract_productions.size + 1
    else
      redirect_to contracts_path, notice: '请选择合同头'
    end    

  end

  # GET /contract_productions/1/edit
  def edit
    @contract_production = ContractProduction.find(params[:id])
  end

  # POST /contract_productions
  # POST /contract_productions.json
  def create
    @contract_production = ContractProduction.new(params[:contract_production])    

    respond_to do |format|
      if @contract_production.save
        format.html { redirect_to @contract_production, notice: 'Contract production was successfully created.' }
        format.json { render json: @contract_production, status: :created, location: @contract_production }
      else
        format.html { render action: "new" }
        format.json { render json: @contract_production.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contract_productions/1
  # PUT /contract_productions/1.json
  def update
    @contract_production = ContractProduction.find(params[:id])

    respond_to do |format|
      if @contract_production.update_attributes(params[:contract_production])
        format.html { redirect_to @contract_production, notice: 'Contract production was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contract_production.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contract_productions/1
  # DELETE /contract_productions/1.json
  def destroy
    @contract_production = ContractProduction.find(params[:id])
    @contract_production.destroy

    respond_to do |format|
      format.html { redirect_to contract_productions_url }
      format.json { head :no_content }
    end
  end
end
