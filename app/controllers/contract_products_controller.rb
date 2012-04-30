# -*- encoding : utf-8 -*-
class ContractProductsController < ApplicationController
  before_filter :init
  
  def init
    if params[:id]
      @contract_product = ContractProduct.find(params[:id])
    elsif params[:contract_id]
      @contract = Contract.find_by_id(params[:contract_id])
    end
  end
  
  # GET /contract_products
  # GET /contract_products.json
  def index
    @contract_products = @contract.contract_products.page(params[:page]).order("no")
  end
  
  # GET /contract_products/search.json
  def search
    @term = params[:term]
    if @term.blank?
      @contract_products = []
    else
      term = '%' + @term + '%'
      contract_id = @contract ? @contract.id : 0
      @contract_products = ContractProduct.where("contract_id = ? and (no like ? or code like ? or name like ?)", contract_id, term, term, term)
    end

    respond_to do |format|
      format.json { render json: @contract_products }
    end
  end

  # GET /contract_products/1
  # GET /contract_products/1.json
  def show    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contract_product }
    end
  end

  # GET /contract_products/new
  # GET /contract_products/new.json
  def new
    @contract_product = ContractProduct.new
    @contract_product.quantity = 0
    @contract_product.contract = @contract
    @contract_product.tax_mode = 3
    @contract_product.no = @contract.contract_products.size + 1
  end

  # GET /contract_products/1/edit
  def edit
  end

  # POST /contract_products
  # POST /contract_products.json
  def create
    @contract_product = ContractProduct.new(params[:contract_product]) 
    respond_to do |format|
      if @contract_product.save
        format.html { redirect_to new_contract_product_url(:contract_id => @contract_product.contract_id), notice: 'Contract product was successfully created.' }
        format.json { render json: @contract_product, status: :created, location: @contract_product }
      else
        format.html { render action: "new" }
        format.json { render json: @contract_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contract_products/1
  # PUT /contract_products/1.json
  def update
    respond_to do |format|
      if @contract_product.update_attributes(params[:contract_product])
        format.html { redirect_to @contract_product, notice: 'Contract product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contract_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contract_products/1
  # DELETE /contract_products/1.json
  def destroy
    @contract_product.destroy

    respond_to do |format|
      format.html { redirect_to contract_products_url(:contract_id => @contract_product.contract_id) }
      format.json { head :no_content }
    end
  end
end
