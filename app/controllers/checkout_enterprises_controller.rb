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
    @checkout_enterprise = CheckoutEnterprise.new

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
        format.html { redirect_to @checkout_enterprise, notice: 'Checkout enterprise was successfully created.' }
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
        format.html { redirect_to @checkout_enterprise, notice: 'Checkout enterprise was successfully updated.' }
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
    @checkout_enterprise.destroy

    respond_to do |format|
      format.html { redirect_to checkout_enterprises_url }
      format.json { head :no_content }
    end
  end
end
