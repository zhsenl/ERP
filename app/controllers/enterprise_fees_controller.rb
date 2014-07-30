# -*- encoding : utf-8 -*-
class EnterpriseFeesController < ApplicationController
  # GET /enterprise_fees
  # GET /enterprise_fees.json
  def index
    if(!params[:enterprise_id].blank?)
      @enterprise = Enterprise.find(params[:enterprise_id])
      @enterprise_fees = @enterprise.enterprise_fees.order('load_port , checkout_enterprise_code')
      @groups = Array.new
      count = 0
      index = 0
      @groups[count] = Array.new
      @enterprise_fees.each do |enterprise_fee|
        if index == 0 or enterprise_fee.load_port == @groups[count][index - 1].load_port
          @groups[count][index] = enterprise_fee
          index += 1
        else
          count += 1
          index = 1
          @groups[count] = Array.new
          @groups[count][0] = enterprise_fee
        end
      end

      render 'index'
    else
      @enterprises = Enterprise.page(params[:page]).order("updated_at DESC")
      render 'enterprise_fees/enterprises'
    end
  end

  # GET /enterprise_fees/1
  # GET /enterprise_fees/1.json
  def show
    @enterprise_fee = EnterpriseFee.find(params[:id])
    @enterprise = Enterprise.find(@enterprise_fee.enterprise_id)
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @enterprise_fee }
    end
  end

  # GET /enterprise_fees/new
  # GET /enterprise_fees/new.json
  def new
    @enterprise = Enterprise.find(params[:enterprise_id])
    @enterprise_fee = EnterpriseFee.new(:enterprise_id => params[:enterprise_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @enterprise_fee }
    end
  end

  # GET /enterprise_fees/1/edit
  def edit
    @enterprise_fee = EnterpriseFee.find(params[:id])
    @enterprise     = Enterprise.find(@enterprise_fee.enterprise_id)

  end

  # POST /enterprise_fees
  # POST /enterprise_fees.json
  def create
    @enterprise_fee = EnterpriseFee.new(params[:enterprise_fee])
    #@enterprise_fee.checkout_enterprise_id = Enterprise.find_by_code(params[:checkout_enterprise_code]).id
    respond_to do |format|
      if @enterprise_fee.save
        format.html {
          if !params[:from].blank?
            redirect_to  finance_path(params[:from])
          else
            redirect_to @enterprise_fee, notice: '付费信息创建成功'
          end
        }
        format.json { render json: @enterprise_fee, status: :created, location: @enterprise_fee }
      else
        format.html { render action: "new" }
        format.json { render json: @enterprise_fee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /enterprise_fees/1
  # PUT /enterprise_fees/1.json
  def update
    @enterprise_fee = EnterpriseFee.find(params[:id])

    respond_to do |format|
      if @enterprise_fee.update_attributes(params[:enterprise_fee])
        format.html {
          if !params[:from].blank?
            redirect_to  finance_path(params[:from])
          else
            redirect_to @enterprise_fee, notice: '付费信息更新成功 .'
          end
        }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @enterprise_fee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enterprise_fees/1
  # DELETE /enterprise_fees/1.json
  def destroy
    @enterprise_fee = EnterpriseFee.find(params[:id])
    enterprise_id = @enterprise_fee.enterprise_id
    @enterprise_fee.destroy

    respond_to do |format|
      format.html {
        if !params[:from].blank?
          redirect_to  finance_path(params[:from])
        else
          redirect_to enterprise_fees_url(:enterprise_id => enterprise_id)
        end
      }
      format.json { head :no_content }
    end
  end

  def search
    @term = params[:term]
    if @term.blank?
      @enterprises = []
    else
      @enterprises = Enterprise.where("code like ? or name like ?", '%' + @term + '%', '%' + @term +'%')
    end

    respond_to do |format|
      format.html { render 'enterprise_fees/enterprises' }
      format.json { render json: @enterprises }
    end
  end

end
