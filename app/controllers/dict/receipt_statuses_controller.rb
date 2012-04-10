# -*- encoding : utf-8 -*-
class Dict::ReceiptStatusesController < Dict::DictsController
  def model
    Dict::ReceiptStatus    
  end
  
  def symbol    
    :dict_receipt_status
  end
end
