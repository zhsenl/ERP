# -*- encoding : utf-8 -*-
class Dict::DictsController < ApplicationController
  before_filter :init
  
  def index
    authorize! :index, :dict
    @title = '字典列表'
    @items = model.paginate(:page => params[:page],:per_page => 10) 
    respond_to do |format|
      format.html 
      format.json { render json: @items }
    end
  end
  
  def search
    @term = params[:term]
    if @term.blank?
      @items = []
    else
      @items = model.where("code like ? or name like ?", @term + '%', '%' + @term +'%')
    end

    respond_to do |format|
      format.html { render action: "index" }
      format.json { render json: @items }
    end
  end
  
  def show
    authorize! :show, :dict
    @title = '字典详细'
    @item = model.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @item }
    end
  end
  
  def show_by_code
    @item = model.find_by_code(params[:id])

    respond_to do |format|
      format.json { render json: @item }
    end
  end

  def new
    authorize! :new, :dict
    @title = '添加字典'
    @item = model.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @item }
    end
  end

  def edit
    authorize! :edit, :dict
    @title = '修改字典'
    @item = model.find(params[:id])
  end

  def create
    authorize! :create, :dict
    @item = model.new(params[symbol])

    respond_to do |format|
      if @item.save
        format.html { redirect_to eval(@item.class.table_name + "_url"), notice: '成功创建字典条目.' }
        format.json { render json: @item, status: :created, location: @item }
      else
        format.html { render action: "new" }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    authorize! :update, :dict
    @item = model.find(params[:id])

    respond_to do |format|
      if @item.update_attributes(params[symbol])
        format.html { redirect_to @item, notice: '修改成功.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    authorize! :destroy, :dict
    @item = model.find(params[:id])
    @item.destroy

    respond_to do |format|
      format.html { redirect_to action: 'index' }
      format.json { head :no_content }
    end
  end
  
  def init
    @model_name = model.model_name.human
  end
end
