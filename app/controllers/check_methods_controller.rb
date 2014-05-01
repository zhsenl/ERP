# -*- encoding : utf-8 -*-
class CheckMethodsController < ApplicationController
  # GET /check_methods
  # GET /check_methods.json
  def index
    @check_methods = CheckMethod.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @check_methods }
    end
  end

  # GET /check_methods/1
  # GET /check_methods/1.json
  def show
    @check_method = CheckMethod.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @check_method }
    end
  end

  # GET /check_methods/new
  # GET /check_methods/new.json
  def new
    @check_method = CheckMethod.new(:from => cookies[:from], :to => cookies[:to])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @check_method }
    end
  end

  # GET /check_methods/1/edit
  def edit
    @check_method = CheckMethod.find(params[:id])
  end

  # POST /check_methods
  # POST /check_methods.json
  def create
    @check_method = CheckMethod.new(params[:check_method])

    respond_to do |format|
      if @check_method.save
        format.html { redirect_to income_finances_path, notice: '结算方式创建成功.'}
        format.json { render json: @check_method, status: :created, location: @check_method }
      else
        format.html { render action: "new" }
        format.json { render json: @check_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /check_methods/1
  # PUT /check_methods/1.json
  def update
    @check_method = CheckMethod.find(params[:id])

    respond_to do |format|
      if @check_method.update_attributes(params[:check_method])
        format.html {redirect_to income_finances_path, notice: '结算方式修改成功'}
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @check_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /check_methods/1
  # DELETE /check_methods/1.json
  def destroy
    @check_method = CheckMethod.find(params[:id])
    @check_method.destroy

    respond_to do |format|
      format.html {redirect_to income_finances_path, notice: '结算方式删除成功'}
      format.json { head :no_content }
    end
  end
end
