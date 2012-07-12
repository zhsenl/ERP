# -*- encoding : utf-8 -*-
class DeclarationsController < ApplicationController
  include ApplicationHelper, PrintHelper
  before_filter :init
  def init
    if params[:id]
      @declaration = Declaration.find(params[:id])
      @declaration_type = @declaration.declaration_type
    else
      @declaration_type = params[:declaration_type] || params[:declaration][:declaration_type]
    end
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
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @declaration }
    end
  end
  
  def print_declaration 
    @declaration_cargos = @declaration.declaration_cargos.order("no")
    @groups = Array.new(@declaration_cargos.size / 5 + 1){Array.new}
    @declaration_cargos.each_with_index do |declaration_cargo, index|
      @groups[index / 5][index % 5] = declaration_cargo
    end
    @title = '打印报关单'
    render :layout => 'print'
  end
  
  def print_contract 
    @declaration_cargos = @declaration.declaration_cargos.order("no")    
    @title = '打印合同'
    render :layout => 'print'
  end
  
  def print_tax_invoice
    @declaration_cargos = @declaration.declaration_cargos.order("no")    
    @title = '打印国税发票'
    render :layout => 'print'
  end
  
  def print_invoice
    @declaration_cargos = @declaration.declaration_cargos.order("no")    
    @title = '打印发票'
    render :layout => 'print'
  end
  
  def print_packing1
    @declaration_packings = @declaration.declaration_packings.order("no")
    @title = '打印装箱单'
    render :layout => 'print'
  end

  # GET /declarations/new
  # GET /declarations/new.json
  def new
    if current_enterprise
      pre_entry_no = Time.now.strftime('%Y%m%d%H%M%S') + system_serial_no
      @declaration = Declaration.new(:enterprise_id => current_enterprise.id,
                                      :declaration_type => @declaration_type,
                                      :pre_entry_no => pre_entry_no,
                                      :pay_way => "7",
                                      :deal_mode => @declaration_type == "export" ? "3" : "1",
                                      :declare_enterprise_code => "744483308",
                                      :transit_type => "001")
      @declaration.declaration_transit_information = DeclarationTransitInformation.new(:local_transport_mode => 4)
    else
      redirect_to declarations_path(:declaration_type => @declaration_type), notice: '请选择要操作的企业'
    end
  end

  # GET /declarations/1/edit
  def edit
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
        format.html { render action: "new", :declaration_type => 1 }
        format.json { render json: @declaration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /declarations/1
  # PUT /declarations/1.json
  def update
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
    @declaration.destroy

    respond_to do |format|
      format.html { redirect_to declarations_url(:declaration_type => @declaration_type) }
      format.json { head :no_content }
    end
  end
end
