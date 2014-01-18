# -*- encoding : utf-8 -*-
class DeclarationPackingsController < ApplicationController
  before_filter :init
  
  def init
    if params[:id]
      @declaration_packing = DeclarationPacking.find(params[:id])
      @declaration = @declaration_packing.declaration
      @declaration_type = @declaration_packing.declaration.declaration_type
    elsif params[:declaration_id]
      @declaration = Declaration.find(params[:declaration_id])
      @declaration_type = @declaration.declaration_type
    else
      @declaration = Declaration.find(params[:declaration_packing][:declaration_id])
      @declaration_type = @declaration.declaration_type
    end
    @mark = @declaration_type
  end
  
  
  # GET /declaration_packings
  # GET /declaration_packings.json
  def index
    @declaration_packings = @declaration.declaration_packings.page(params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @declaration_packings }
    end
  end

  # GET /declaration_packings/1
  # GET /declaration_packings/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @declaration_packing }
    end
  end

  # GET /declaration_packings/new
  # GET /declaration_packings/new.json
  def new
    @declaration_packing = DeclarationPacking.new(:declaration_id => @declaration.id,
                                                  :no => @declaration.declaration_packings.size + 1)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @declaration_packing }
    end
  end

  # GET /declaration_packings/1/edit
  def edit
    @declaration_packing = DeclarationPacking.find(params[:id])
  end

  # POST /declaration_packings
  # POST /declaration_packings.json
  def create
    @declaration_packing = DeclarationPacking.new(params[:declaration_packing])

    respond_to do |format|
      if @declaration_packing.save
        format.html { redirect_to new_declaration_packing_url(:declaration_id => @declaration_packing.declaration_id), notice: 'Declaration packing was successfully created.' }
        format.json { render json: @declaration_packing, status: :created, location: @declaration_packing }
      else
        format.html { render action: "new" }
        format.json { render json: @declaration_packing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /declaration_packings/1
  # PUT /declaration_packings/1.json
  def update
    respond_to do |format|
      if @declaration_packing.update_attributes(params[:declaration_packing])
        format.html { redirect_to @declaration_packing, notice: '修改成功' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @declaration_packing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /declaration_packings/1
  # DELETE /declaration_packings/1.json
  def destroy
    @declaration_packing.destroy

    respond_to do |format|
      format.html { redirect_to declaration_packings_url(:declaration_id => @declaration_packing.declaration_id) }
      format.json { head :no_content }
    end
  end
end
