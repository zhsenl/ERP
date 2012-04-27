class DeclarationsController < ApplicationController
  before_filter :set_type_mark
  
  # GET /declarations
  # GET /declarations.json
  def index
    @declarations = Declaration.all

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

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @declaration }
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
  
  def set_type_mark
    @mark = params[:declaration_type]
  end
end
