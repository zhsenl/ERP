# -*- encoding : utf-8 -*-
class PagesController < ApplicationController
  before_filter :authorize
  
  def authorize
    authorize! :read, :pages
  end
  
  def home
  end
  
  def dict
  end
end
