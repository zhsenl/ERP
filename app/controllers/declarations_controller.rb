# -*- encoding : utf-8 -*-
class DeclarationsController < ApplicationController
  include ApplicationHelper, DeclarationsHelper, PrintHelper
  before_filter :init

  def init
    if params[:id]
      @declaration = Declaration.find(params[:id])
      @declaration_type = @declaration.declaration_type
    elsif !params[:declaration_type].nil? || !params[:declaration].nil?
      #else
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
    authorize! :show, @declaration
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @declaration }
    end
  end

  def print_declaration
    authorize! :show, @declaration
    @declaration_cargos = @declaration.declaration_cargos.order("no")
    @groups = Array.new((@declaration_cargos.size - 1) / 5 + 1) { Array.new }
    @declaration_cargos.each_with_index do |declaration_cargo, index|
      @groups[index / 5][index % 5] = declaration_cargo
    end
    @title = '打印报关单'
    render :layout => 'print'
  end

  def print_contract
    authorize! :show, @declaration
    @declaration_cargos = @declaration.declaration_cargos.order("no")
    @title = '打印合同'
    render :layout => 'print'
  end

  def print_contract2
    authorize! :show, @declaration
    @declaration_cargos = @declaration.declaration_cargos.order("no")
    @title = '打印合同2'
    render :layout => 'print'
  end

  def print_tax_invoice
    authorize! :show, @declaration
    @declaration_cargos = @declaration.declaration_cargos.order("no")
    @title = '打印国税发票'
    render :layout => 'print'
  end

  def print_invoice
    authorize! :show, @declaration
    @declaration_cargos = @declaration.declaration_cargos.order("no")
    @title = '打印发票'
    render :layout => 'print'
  end

  def print_packing1
    authorize! :show, @declaration
    @declaration_packings = @declaration.declaration_packings.order("no")
    @title = '打印装箱单'
    render :layout => 'print'
  end

  def print_packing2
    authorize! :show, @declaration
    @declaration_packings = @declaration.declaration_packings.order("no")
    @title = '打印装箱明细单'
    render :layout => 'print'
  end

  def print_packing3
    authorize! :show, @declaration
    @declaration_cargos = @declaration.declaration_cargos.order("no")
    @title = '打印凤岗装箱单'
    render :layout => 'print'
  end

  # GET /declarations/1/declare.json
  def declare
    authorize! :declare, @declaration
    if generate_declaration_xml(@declaration.id)
      result = {:type => "success", :content => "已经成功生成报文，请稍后再查询申报结果"}
    else
      result = {:type => "error", :content => "生成报文失败"}
    end
    respond_to do |format|
      format.json { render json: result }
    end
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
                                     :declare_enterprise_code => "4419980074",
                                     :transit_type => "001",
                                     :created_by => current_user.username)
      @declaration.declaration_transit_information = DeclarationTransitInformation.new(:local_transport_mode => 4)
    else
      redirect_to declarations_path(:declaration_type => @declaration_type), notice: '请选择要操作的企业'
    end
  end

  # GET /declarations/1/edit
  def edit
    authorize! :edit, @declaration
  end

  # POST /declarations
  # POST /declarations.json
  def create
    @declaration = Declaration.new(params[:declaration])
    authorize! :create, @declaration

    respond_to do |format|
      if @declaration.save
        format.html { redirect_to @declaration, :flash => {:success => '成功保存报关单'} }
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
    authorize! :update, @declaration
    respond_to do |format|
      if @declaration.update_attributes(params[:declaration])
        format.html { redirect_to @declaration, :flash => {:success => '成功修改报关单'} }
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
    authorize! :destory, @declaration
    @declaration.destroy

    respond_to do |format|
      format.html { redirect_to declarations_url(:declaration_type => @declaration_type), :flash => {:success => '删除成功'} }
      format.json { head :no_content }
    end
  end

  def print_attorney
    authorize! :show, @declaration
    @declaration_cargos = @declaration.declaration_cargos.order("no")
    @major_cargo = nil
    @major_cargo_price = 0
    @total_price = 0
    @declaration_cargos.each do |cargo|
      tem = cargo.unit_price * cargo.quantity
      @total_price += tem
      if tem > @major_cargo_price
        @major_cargo = cargo
      end
    end
    @title = '代理报关委托书'
    render :layout => 'print'
  end

  def manage
    respond_to do |format|
      format.html {
        @declarations = [];
      }
      format.json {
        opt = {}
        if  params[:current_enterprise_id] != ''
          opt[:enterprise_id] = params[:current_enterprise_id]
        end
        if  params[:contract_id] != ''
          opt[:contract_id] = params[:contract_id]
        end
        opt[:declaration_type] = params[:declaration_type]== '' ? ['import', 'export'] : params[:declaration_type]
        if params[:from] !='' and params[:to] != ''
          opt[:declare_date] = params[:from]..params[:to]
        end
        @declarations = Declaration.where(opt)
        $DECLARATIONS = @declarations
        render json: @declarations
      }
    end
  end

  def toggle
    respond_to do |format|
      format.json {
        if params[:type] == 'review_type'
          render json: {result: Declaration.find(params[:id]).update_attribute(params[:type], params[:is_yes] == 'true' ? 0 : 3)}
        else
          render json: {result: Declaration.find(params[:id]).update_attribute(params[:type], params[:is_yes] == 'true' ? false : true)}
        end

      }
    end
  end

  def print_declarations
    @declarations = $DECLARATIONS
    @title = '报关单预入库管理查询结果'
    @enterprise_name = params[:enterprise_name]
    @manual = params[:manual]
    @from = params[:from]
    @to = params[:to]
    render :layout => 'print'
  end

  def statistic
    respond_to do |format|
      format.html
      format.json {
        opt = {}
        $statistic = {}
        result = {}
        if  params[:current_enterprise_id] != ''
          opt[:enterprise_id] = params[:current_enterprise_id]
        end
        if  params[:contract_id] != ''
          opt[:contract_id] = params[:contract_id]
        end
        #报关单数   报关单金额
        opt[:declaration_type] = 'import'
        @declarations = Declaration.where(opt)
        $statistic[:import_sum] = @declarations.count
        $statistic[:import_price] = @declarations.joins(:declaration_cargos).sum('unit_price * quantity')
        opt[:declaration_type] = 'export'
        @declarations = Declaration.where(opt)
        $statistic[:export_sum] = @declarations.count
        $statistic[:export_price] = @declarations.joins(:declaration_cargos).sum('unit_price * quantity')
        result[:statistic] = $statistic


        render json: result
      }
    end
  end

  def print_statistic
    @title = '加工贸易合同核销申请表'
    @contract = $contract
    @statistic = $statistic
    @statistic_pro_mat_con = $statistic_pro_mat_con
    render :layout => 'print'
  end

  def statistic_pro_mat_con
    respond_to do |format|
      format.json {
        $statistic_pro_mat_con = {}
        if  params[:contract_id] != ''
          $contract = Contract.find(params[:contract_id])
          #成品
          $statistic_pro_mat_con[:products] = $contract.contract_products
          #料件
          $statistic_pro_mat_con[:materials] = $contract.contract_materials
          #单损耗 只取第一个成品的单损耗
          $statistic_pro_mat_con[:consumptions] = {}
          $statistic_pro_mat_con[:products].each_with_index { |product, i|
            $statistic_pro_mat_con[:consumptions][i] = product.contract_consumptions.joins(:contract_product, :contract_material).select(
                'contract_products.name as contract_product_name , contract_materials.name as contract_material_name, contract_consumptions.used, contract_consumptions.wasted ')
          }
        end
        render json: $statistic_pro_mat_con
      }
    end


  end

end
