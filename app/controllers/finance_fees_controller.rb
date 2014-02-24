class FinanceFeesController < ApplicationController
  # GET /finance_fees
  # GET /finance_fees.json
  def index
    @finance_fees = FinanceFee.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @finance_fees }
    end
  end

  # GET /finance_fees/1
  # GET /finance_fees/1.json
  def show
    @finance_fee = FinanceFee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @finance_fee }
    end
  end

  # GET /finance_fees/new
  # GET /finance_fees/new.json
  def new
    @finance_fee = FinanceFee.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @finance_fee }
    end
  end

  # GET /finance_fees/1/edit
  def edit
    @finance_fee = FinanceFee.find(params[:id])
  end

  # POST /finance_fees
  # POST /finance_fees.json
  def create
    @finance_fee = FinanceFee.new(params[:finance_fee])

    respond_to do |format|
      if @finance_fee.save
        format.html { redirect_to @finance_fee, notice: 'Finance fee was successfully created.' }
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
        format.html { redirect_to @finance_fee, notice: 'Finance fee was successfully updated.' }
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
    @finance_fee.destroy

    respond_to do |format|
      format.html { redirect_to finance_fees_url }
      format.json { head :no_content }
    end
  end
end
