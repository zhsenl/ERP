# -*- encoding : utf-8 -*-
class SessionsController < ActionController::Base
  include SessionsHelper
  
  def new
    @title = "登录"
  end

  def create
    user = User.authenticate(params[:session][:username], params[:session][:password])
    if user.nil?
      flash[:error] = "错误的用户名/密码组合!"
      @title = "登录"
      render 'new'
    else
      sign_in user, params[:session][:remember] == '1'
      if params[:url].nil?
        redirect_to root_url
      else
        redirect_to params[:url]
      end
    end
  end

  def destroy
    sign_out
    redirect_to signin_path
  end
end
