class Dict::UnitsController < ApplicationController
  # GET /dict/units
  # GET /dict/units.json
  def index
    @dict_units = Dict::Unit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dict_units }
    end
  end

  # GET /dict/units/1
  # GET /dict/units/1.json
  def show
    @dict_unit = Dict::Unit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dict_unit }
    end
  end

  # GET /dict/units/new
  # GET /dict/units/new.json
  def new
    @dict_unit = Dict::Unit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dict_unit }
    end
  end

  # GET /dict/units/1/edit
  def edit
    @dict_unit = Dict::Unit.find(params[:id])
  end

  # POST /dict/units
  # POST /dict/units.json
  def create
    @dict_unit = Dict::Unit.new(params[:dict_unit])

    respond_to do |format|
      if @dict_unit.save
        format.html { redirect_to @dict_unit, notice: 'Unit was successfully created.' }
        format.json { render json: @dict_unit, status: :created, location: @dict_unit }
      else
        format.html { render action: "new" }
        format.json { render json: @dict_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dict/units/1
  # PUT /dict/units/1.json
  def update
    @dict_unit = Dict::Unit.find(params[:id])

    respond_to do |format|
      if @dict_unit.update_attributes(params[:dict_unit])
        format.html { redirect_to @dict_unit, notice: 'Unit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dict_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dict/units/1
  # DELETE /dict/units/1.json
  def destroy
    @dict_unit = Dict::Unit.find(params[:id])
    @dict_unit.destroy

    respond_to do |format|
      format.html { redirect_to dict_units_url }
      format.json { head :no_content }
    end
  end
end
