class DeclarationContainersController < ApplicationController
  before_filter :init
  
  def init
    if params[:id]
      @declaration_container = DeclarationContainer.find(params[:id])
      @declaration = @declaration_container.declaration
      @declaration_type = @declaration_container.declaration.declaration_type
    elsif params[:declaration_id]
      @declaration = Declaration.find(params[:declaration_id])
      @declaration_type = @declaration.declaration_type
    else
      @declaration = Declaration.find(params[:declaration_container][:declaration_id])
      @declaration_type = @declaration.declaration_type
    end
    @mark = @declaration_type
  end
  
  
  # GET /declaration_containers
  # GET /declaration_containers.json
  def index
    @declaration_containers = @declaration.declaration_containers.page(params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @declaration_containers }
    end
  end

  # GET /declaration_containers/1
  # GET /declaration_containers/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @declaration_container }
    end
  end

  # GET /declaration_containers/new
  # GET /declaration_containers/new.json
  def new
    @declaration_container = DeclarationContainer.new(:declaration_id => @declaration.id)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @declaration_container }
    end
  end

  # GET /declaration_containers/1/edit
  def edit
    @declaration_container = DeclarationContainer.find(params[:id])
  end

  # POST /declaration_containers
  # POST /declaration_containers.json
  def create
    @declaration_container = DeclarationContainer.new(params[:declaration_container])

    respond_to do |format|
      if @declaration_container.save
        format.html { redirect_to new_declaration_container_url(:declaration_id => @declaration_container.declaration_id), notice: 'Declaration container was successfully created.' }
        format.json { render json: @declaration_container, status: :created, location: @declaration_container }
      else
        format.html { render action: "new" }
        format.json { render json: @declaration_container.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /declaration_containers/1
  # PUT /declaration_containers/1.json
  def update
    respond_to do |format|
      if @declaration_container.update_attributes(params[:declaration_container])
        format.html { redirect_to @declaration_container, notice: 'Declaration container was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @declaration_container.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /declaration_containers/1
  # DELETE /declaration_containers/1.json
  def destroy
    @declaration_container.destroy

    respond_to do |format|
      format.html { redirect_to declaration_containers_url(:declaration_id => @declaration_container.declaration_id) }
      format.json { head :no_content }
    end
  end
end
