# -*- encoding : utf-8 -*-
class UsersController < ApplicationController
  authorize_resource
  
  def index
    @title = "用户列表"
    @users = User.paginate(:page => params[:page],:per_page => 10, :order => "users.updated_at DESC")
  end
  
  def show    
    @user = User.find(params[:id])
    @title = @user.username + " 用户详细信息"
  end
  
  def new
    @title = "添加新用户"
    @user = User.new
  end
  
  def create
    @title = "添加新用户"
    @user = User.new(params[:user])  
    if @user.save
      flash[:success] = "新用户添加成功"
      @user = User.new
    end
    render "new"
  end
  
  def edit
    @title = "编辑用户资料"
    @user = User.find(params[:id])
  end
  
  def update    
    @user = User.find(params[:id])  
    if @user.update_attributes(params[:user])
      redirect_to @user, :flash => {:success => "成功修改用户资料"}
    else
      @title = "编辑用户资料"
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    username = @user.username
    @user.destroy
    flash[:success] = "成功删除用户:#{username}"
    redirect_to users_url
  end
  
  def me    
    @user = current_user
    @title = "我的详细资料"
  end
  
  def modify
    @title = "编辑我的资料"
    @user = current_user
  end

  def change    
    @user = current_user
    @user.email = params[:user][:email]
    @user.name = params[:user][:name]
    @user.phone = params[:user][:phone]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
    if @user.save
      redirect_to :me, :flash => {:success => "成功修改我的资料"}
    else      
      @title = "编辑我的资料"
      render 'modify'
    end
  end
  
  def my_enterprises
    @enterprises = current_user.enterprises
    respond_to do |format|
      format.json { render json: @enterprises }
    end
  end
  
  def enterprises
    @user = User.find(params[:id])
    @title = @user.username + " 的授权企业列表"
    @enterprises = @user.enterprises.paginate(:page => params[:page],:per_page => 10)
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @enterprises }
    end
  end
  
end
