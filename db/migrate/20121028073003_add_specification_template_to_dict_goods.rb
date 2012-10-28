# -*- encoding : utf-8 -*-
class AddSpecificationTemplateToDictGoods < ActiveRecord::Migration
  def change
    add_column :dict_goods, :specification_template, :string, :default => '规格型号|其他'
  end
end
