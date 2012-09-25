# -*- encoding : utf-8 -*-
class CargosController < ApplicationController
  # GET /cargos
  # GET /cargos.json
  def index
    if current_enterprise
      @cargos = current_enterprise.cargos.page(params[:page]).order("updated_at DESC")
    else
      @cargos = Enterprise.new.cargos.paginate(:page => params[:page],:per_page => 10)
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cargos }
    end
  end

  # GET /cargos/search.json
  def search
    term = params[:term]
    if term.blank?
    @cargos = []
    else
      @cargos = Cargo.where("code like ? or name like ?", term + '%', '%' + term +'%')
    end

    respond_to do |format|
      format.json { render json: @cargos }
    end
  end

  # GET /cargos/1
  # GET /cargos/1.json
  def show
    @cargo = Cargo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cargo }
    end
  end

  # GET /cargos/new
  # GET /cargos/new.json
  def new
    @cargo = Cargo.new
    if current_enterprise
      @cargo.enterprise = current_enterprise
    else
      redirect_to cargos_path, notice: '请选择要操作的企业'
    end
  end

  # GET /cargos/1/edit
  def edit
    @cargo = Cargo.find(params[:id])
  end

  # POST /cargos
  # POST /cargos.json
  def create
    @cargo = Cargo.new(params[:cargo])

    respond_to do |format|
      if @cargo.save
        format.html { redirect_to @cargo, notice: 'Cargo was successfully created.' }
        format.json { render json: @cargo, status: :created, location: @cargo }
      else
        format.html { render action: "new" }
        format.json { render json: @cargo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cargos/1
  # PUT /cargos/1.json
  def update
    @cargo = Cargo.find(params[:id])

    respond_to do |format|
      if @cargo.update_attributes(params[:cargo])
        format.html { redirect_to @cargo, notice: 'Cargo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cargo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cargos/1
  # DELETE /cargos/1.json
  def destroy
    @cargo = Cargo.find(params[:id])
    @cargo.destroy

    respond_to do |format|
      format.html { redirect_to cargos_url }
      format.json { head :no_content }
    end
  end
end
