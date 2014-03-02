# -*- encoding : utf-8 -*-
class FinanceFeesController < ApplicationController
  def new
    @finance = Finance.find(params[:finance_id])
    @finance_fee = FinanceFee.new(:finance_id => params[:finance_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @finance_fee }
    end
  end

  # GET /finance_fees/1/edit
  def edit
    @finance_fee = FinanceFee.find(params[:id])
    @finance = Finance.find(@finance_fee.finance_id)

  end

  # POST /finance_fees
  # POST /finance_fees.json
  def create
    @finance_fee = FinanceFee.new(params[:finance_fee])

    respond_to do |format|
      if @finance_fee.save
        format.html {
          if params[:from]
            redirect_to  finance_path(params[:from])
          else
            redirect_to @finance_fee, notice: '付费信息创建成功'
          end
        }
        format.json { render json: @finance_fee, status: :created, location: @finance_fee }
      else
        format.html { render action: "new" }
        format.json { render json: @finance_fee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /finance_fees/1
  # PUT /finance_fees/1.json
  def update
    @finance_fee = FinanceFee.find(params[:id])

    respond_to do |format|
      if @finance_fee.update_attributes(params[:finance_fee])
        format.html {
          if params[:from]
            redirect_to  finance_path(params[:from])
          else
            redirect_to @finance_fee, notice: '付费信息更新成功 .'
          end
        }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @finance_fee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finance_fees/1
  # DELETE /finance_fees/1.json
  def destroy
    @finance_fee = FinanceFee.find(params[:id])
    finance_id = @finance_fee.finance_id
    @finance_fee.destroy

    respond_to do |format|
      format.html {
        if params[:from]
          redirect_to  finance_path(params[:from])
        else
          redirect_to finance_fees_url(:finance_id => finance_id)
        end
      }
      format.json { head :no_content }
    end
  end
end
