# -*- encoding : utf-8 -*-
class Dict::AttachmentsController < Dict::DictsController
  def model
    Dict::Attachment    
  end
  
  def symbol    
    :dict_attachment
  end
end
