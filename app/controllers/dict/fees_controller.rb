class Dict::FeesController < Dict::DictsController
  def model
    Dict::Fee
  end

  def symbol
    :dict_fee
  end
end
