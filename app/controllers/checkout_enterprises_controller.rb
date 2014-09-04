# -*- encoding : utf-8 -*-
class CheckoutEnterprisesController < ApplicationController
  # GET /checkout_enterprises
  # GET /checkout_enterprises.json
  def index
    @checkout_enterprises = CheckoutEnterprise.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @checkout_enterprises }
    end
  end

  # GET /checkout_enterprises/1
  # GET /checkout_enterprises/1.json
  def show
    @checkout_enterprise = CheckoutEnterprise.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @checkout_enterprise }
    end
  end

  # GET /checkout_enterprises/new
  # GET /checkout_enterprises/new.json
  def new
    @checkout_enterprise = CheckoutEnterprise.new(:finance_id => params[:finance_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @checkout_enterprise }
    end
  end

  # GET /checkout_enterprises/1/edit
  def edit
    @checkout_enterprise = CheckoutEnterprise.find(params[:id])
  end

  # POST /checkout_enterprises
  # POST /checkout_enterprises.json
  def create
    @checkout_enterprise = CheckoutEnterprise.new(params[:checkout_enterprise])

    respond_to do |format|
      if @checkout_enterprise.save
        create_finance_fee   #创建在付费信息里填写的结算单位对应的账单信息
        format.html {
          if params[:from]
            redirect_to  finance_path(params[:from])
          else
            redirect_to @checkout_enterprise, notice: '结算单位创建成功.'
          end
        }
        format.json { render json: @checkout_enterprise, status: :created, location: @checkout_enterprise }
      else
        format.html { render action: "new" }
        format.json { render json: @checkout_enterprise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /checkout_enterprises/1
  # PUT /checkout_enterprises/1.json
  def update
    @checkout_enterprise = CheckoutEnterprise.find(params[:id])

    respond_to do |format|
      if @checkout_enterprise.update_attributes(params[:checkout_enterprise])
        format.html {
          if params[:from]
            redirect_to  finance_path(params[:from])
          else
            redirect_to @checkout_enterprise, notice: 'Checkout enterprise was successfully updated.'
          end
        }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @checkout_enterprise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checkout_enterprises/1
  # DELETE /checkout_enterprises/1.json
  def destroy
    @checkout_enterprise = CheckoutEnterprise.find(params[:id])
    destroy_finance_fee   #删除在结算单位对应的付费信息
    respond_to do |format|
      if @checkout_enterprise.destroy
        format.html {
          if params[:from]
            redirect_to  finance_path(params[:from])
          else
            redirect_to checkout_enterprises_url
          end
        }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @checkout_enterprise.errors, status: :unprocessable_entity }
      end
    end
  end

  def create_finance_fee
    finance = Finance.find(@checkout_enterprise.finance_id)
    enterprise_fees =  EnterpriseFee.find_all_by_load_port_and_enterprise_id_and_checkout_enterprise_code(finance.declaration.load_port, finance.declaration.enterprise_id,@checkout_enterprise.code)
    filter_type = finance.declaration.declaration_type == "import" ? "export" : "import"
    enterprise_fees.each do |enterprise_fee|
      #创建 finance 的费用
      if enterprise_fee.declaration_type == filter_type
        next
      end
      if Dict::Fee.find_by_code(enterprise_fee.code).blank?
        next
      end
      new_finance_fee = FinanceFee.new(Dict::Fee.find_by_code(enterprise_fee.code).attributes)
      if !enterprise_fee.price.blank?
        new_finance_fee.price = enterprise_fee.price
      end
      new_finance_fee.finance_id = finance.id
      new_finance_fee.checkout_enterprise_id = @checkout_enterprise.id
      new_finance_fee.save
    end
  end

  def destroy_finance_fee
    finance_fees = FinanceFee.find_all_by_finance_id_and_checkout_enterprise_id(@checkout_enterprise.finance_id, @checkout_enterprise.id)
    finance_fees.each do|finance_fee|
      finance_fee.destroy
    end
  end

  end
