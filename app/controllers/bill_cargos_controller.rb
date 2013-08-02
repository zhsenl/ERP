class BillCargosController < ApplicationController
  # GET /bill_cargos
  # GET /bill_cargos.json
  def index
    @bill_cargos = BillCargo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bill_cargos }
    end
  end

  # GET /bill_cargos/1
  # GET /bill_cargos/1.json
  def show
    @bill_cargo = BillCargo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bill_cargo }
    end
  end

  # GET /bill_cargos/new
  # GET /bill_cargos/new.json
  def new
    @bill_cargo = BillCargo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bill_cargo }
    end
  end

  # GET /bill_cargos/1/edit
  def edit
    @bill_cargo = BillCargo.find(params[:id])
  end

  # POST /bill_cargos
  # POST /bill_cargos.json
  def create
    @bill_cargo = BillCargo.new(params[:bill_cargo])

    respond_to do |format|
      if @bill_cargo.save
        format.html { redirect_to @bill_cargo, notice: 'Bill cargo was successfully created.' }
        format.json { render json: @bill_cargo, status: :created, location: @bill_cargo }
      else
        format.html { render action: "new" }
        format.json { render json: @bill_cargo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bill_cargos/1
  # PUT /bill_cargos/1.json
  def update
    @bill_cargo = BillCargo.find(params[:id])

    respond_to do |format|
      if @bill_cargo.update_attributes(params[:bill_cargo])
        format.html { redirect_to @bill_cargo, notice: 'Bill cargo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bill_cargo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bill_cargos/1
  # DELETE /bill_cargos/1.json
  def destroy
    @bill_cargo = BillCargo.find(params[:id])
    @bill_cargo.destroy

    respond_to do |format|
      format.html { redirect_to bill_cargos_url }
      format.json { head :no_content }
    end
  end
end
