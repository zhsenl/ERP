# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to signin_path, :error => exception.message
  end
  
  #authorize_resource
end
