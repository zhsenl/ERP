# -*- encoding : utf-8 -*-
class OptionsController < ApplicationController
  authorize_resource
  
  def index
    options = Option.where("mark = ?", "general")
    @options = to_hash(options)
  end

  def update
    success = true
    @options = params[:options]
    @options.each do |key, value|
      option = Option.find_by_name(key)
      option ||= Option.new
      option.name = key
      option.value = value
      option.mark = "general"
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
  
  
  
  private
  
  def to_hash(options)
    hash = {}
    options.each do |option|
      hash[option.name] = option.value
    end
    return hash
  end
end
