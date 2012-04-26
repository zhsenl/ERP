# -*- encoding : utf-8 -*-
class ContractConsumptionsController < ApplicationController
  # GET /contract_consumptions
  # GET /contract_consumptions.json
  def index
    @contract_product = ContractProduct.find(params[:contract_product_id])
    @contract = @contract_product.contract
    @contract_consumptions = @contract_product.contract_consumptions.page(params[:page])
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contract_consumptions }
    end
  end

  # GET /contract_consumptions/1
  # GET /contract_consumptions/1.json
  def show
    @contract_consumption = ContractConsumption.find(params[:id])
    @contract_product = @contract_consumption.contract_product
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contract_consumption }
    end
  end

  # GET /contract_consumptions/new
  # GET /contract_consumptions/new.json
  def new
    @contract_product = ContractProduct.find(params[:contract_product_id])
    @contract_consumption = ContractConsumption.new(:contract_product_id => @contract_product.id)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contract_consumption }
    end
  end

  # GET /contract_consumptions/1/edit
  def edit
    @contract_consumption = ContractConsumption.find(params[:id])
    @contract_product = @contract_consumption.contract_product
  end

  # POST /contract_consumptions
  # POST /contract_consumptions.json
  def create
    @contract_consumption = ContractConsumption.new(params[:contract_consumption])

    respond_to do |format|
      if @contract_consumption.save
        format.html { redirect_to new_contract_consumption_url(:contract_product_id => @contract_consumption.contract_product_id) , notice: 'Contract consumption was successfully created.' }
        format.json { render json: @contract_consumption, status: :created, location: @contract_consumption }
      else
        @contract_product = @contract_consumption.contract_product
        format.html { render action: "new" }
        format.json { render json: @contract_consumption.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contract_consumptions/1
  # PUT /contract_consumptions/1.json
  def update
    @contract_consumption = ContractConsumption.find(params[:id])

    respond_to do |format|
      if @contract_consumption.update_attributes(params[:contract_consumption])
        format.html { redirect_to @contract_consumption, notice: 'Contract consumption was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contract_consumption.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contract_consumptions/1
  # DELETE /contract_consumptions/1.json
  def destroy
    @contract_consumption = ContractConsumption.find(params[:id])
    @contract_consumption.destroy

    respond_to do |format|
      format.html { redirect_to contract_consumptions_url(:contract_product_id => @contract_consumption.contract_product_id) }
      format.json { head :no_content }
    end
  end
end
