# -*- encoding : utf-8 -*-
class PagesController < ApplicationController   
  def home
  end
  
  def dict
  end  
  
  def select_enterprise
    enterprise = Enterprise.find_by_id(params[:current_enterprise_id])
    if enterprise
      set_current_enterprise enterprise
      flash[:success] = "切换当前操作企业为：" + enterprise.name   
    end
    redirect_to params[:url]
  end

  def barcode
    barcode = Barby::Code39.new(params[:code], true)
    #barcode.include_checksum = true;
    send_data barcode.to_png(:height => 30, :margin => 5), :type => 'image/png', :disposition => 'inline'
  end

end
