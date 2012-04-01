# -*- encoding : utf-8 -*-
class UsersController < ApplicationController
    
  def show    
    @user = current_user
    @title = "我的详细资料"
  end  
  
  def edit
    @title = "编辑我的资料"
    @user = current_user
  end

  def update    
    @user = current_user
    @user.email = params[:user][:email]
    @user.name = params[:user][:name]
    @user.phone = params[:user][:phone]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
    if @user.save
      redirect_to detail_path, :flash => {:success => "成功修改我的资料"}
    else
      @title = "编辑我的资料"
      render 'edit'
    end
  end
end
