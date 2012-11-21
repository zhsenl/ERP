# -*- encoding : utf-8 -*-
class ContractsController < ApplicationController
  include ContractsHelper
  authorize_resource
  # GET /contracts
  # GET /contracts.json
  def index
    if current_enterprise
      @contracts = current_enterprise.contracts.page(params[:page]).order("updated_at DESC")
    else
      @contracts = Enterprise.new.contracts.page(params[:page])
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contracts }
    end
  end

  # GET /contracts/1
  # GET /contracts/1.json
  def show
    @contract = Contract.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contract }
    end
  end

  # GET /contracts/new
  # GET /contracts/new.json
  def new
    @contract = Contract.new
    if current_enterprise
      @contract = Contract.new(:enterprise_id => current_enterprise.id)
    else
      redirect_to contracts_path, notice: '请选择要操作的企业'
    end
    @contract.export_deal_mode = 3
    @contract.import_deal_mode = 1
  end

  # GET /contracts/1/edit
  def edit
    @contract = Contract.find(params[:id])
  end

  # POST /contracts
  # POST /contracts.json
  def create
    @contract = Contract.new(params[:contract])

    respond_to do |format|
      if @contract.save
        format.html { redirect_to @contract, notice: 'Contract was successfully created.' }
        format.json { render json: @contract, status: :created, location: @contract }
      else
        format.html { render action: "new" }
        format.json { render json: @contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contracts/1
  # PUT /contracts/1.json
  def update
    @contract = Contract.find(params[:id])

    respond_to do |format|
      if @contract.update_attributes(params[:contract])
        format.html { redirect_to @contract, notice: 'Contract was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contracts/1
  # DELETE /contracts/1.json
  def destroy
    @contract = Contract.find(params[:id])
    @contract.destroy

    respond_to do |format|
      format.html { redirect_to contracts_url(:enterprise_id => @contract.enterprise_id) }
      format.json { head :no_content }
    end
  end

  def import
  end

  def upload
    uploaded_io = params[:contract]
    begin
      file_path = Rails.root.join('tmp', uploaded_io.original_filename)
      File.open(file_path, 'wb') do |file|
        file.write(uploaded_io.read)
        import_status = import_contract(file)
        if import_status[:result]
          flash[:success] = ('成功导入合同, <a href="' + contract_url(import_status[:contract]) + '" >点击查看</a>').html_safe
        else
          flash[:attention] = import_status[:message]
        end
      end
      File.delete(file_path)
    rescue
      #puts "error:#{$!} at:#{$@}"
      flash[:error] = '导入合同失败'
    end
    redirect_to import_contracts_url
  end
end
