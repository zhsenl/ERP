# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  before_filter :authorize
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to signin_path(:url => request.url), :flash => {:attention => "你没有权限进行此操作"}
  end
  
  def authorize
    authorize! :access, :system
  end
end
