# -*- encoding : utf-8 -*-
class DeclarationsController < ApplicationController
  before_filter :init
  
  def init
    @declaration_type = params[:declaration_type]
    @mark = @declaration_type
  end
  
  # GET /declarations
  # GET /declarations.json
  def index
    if current_enterprise
      @declarations = Declaration.where("enterprise_id = ? and declaration_type = ?", current_enterprise.id, @declaration_type).page(params[:page]).order("updated_at DESC")
    else
      @declarations = Enterprise.new.declarations.page(params[:page])
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @declarations }
    end
  end

  # GET /declarations/1
  # GET /declarations/1.json
  def show
    @declaration = Declaration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @declaration }
    end
  end

  # GET /declarations/new
  # GET /declarations/new.json
  def new
    @declaration = Declaration.new
    if current_enterprise
      @declaration.enterprise = current_enterprise
    else
      redirect_to declarations_path(:declaration_type => @declaration_type), notice: '请选择要操作的企业'
    end
  end

  # GET /declarations/1/edit
  def edit
    @declaration = Declaration.find(params[:id])
  end

  # POST /declarations
  # POST /declarations.json
  def create
    @declaration = Declaration.new(params[:declaration])

    respond_to do |format|
      if @declaration.save
        format.html { redirect_to @declaration, notice: 'Declaration was successfully created.' }
        format.json { render json: @declaration, status: :created, location: @declaration }
      else
        format.html { render action: "new" }
        format.json { render json: @declaration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /declarations/1
  # PUT /declarations/1.json
  def update
    @declaration = Declaration.find(params[:id])

    respond_to do |format|
      if @declaration.update_attributes(params[:declaration])
        format.html { redirect_to @declaration, notice: 'Declaration was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @declaration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /declarations/1
  # DELETE /declarations/1.json
  def destroy
    @declaration = Declaration.find(params[:id])
    @declaration.destroy

    respond_to do |format|
      format.html { redirect_to declarations_url }
      format.json { head :no_content }
    end
  end  
end
