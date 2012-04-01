# -*- encoding : utf-8 -*-
class Admin::UsersController < ApplicationController
  def index
    @title = "用户列表"
    @users = User.paginate(:page => params[:page],:per_page => 10)
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
      redirect_to [:admin, @user], :flash => {:success => "成功修改用户资料"}
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
    redirect_to admin_users_url
  end
end
