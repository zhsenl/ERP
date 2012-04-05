# -*- encoding : utf-8 -*-
class OptionsController < ApplicationController
  authorize_resource
  
  def index
    @options = {}
    options = Option.where("autoload = ?", true)
    options.each do |option|
      @options[option.name] = option.value
    end
  end

  def update
    success = true
    @options = params[:options]
    @options.each do |key, value|
      option = Option.find_by_name(key)
      option ||= Option.new
      option.name = key
      option.value = value
      option.autoload = true
      if !option.save 
        success = false
      end
    end
    
    if success
      redirect_to options_path, :flash => {:success => "选项保存成功"}
    else
      flash[:error] = "保存失败"
      render "index"
    end
  end
end
