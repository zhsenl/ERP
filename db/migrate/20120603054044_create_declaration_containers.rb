class CreateDeclarationContainers < ActiveRecord::Migration
  def change
    create_table :declaration_containers do |t|
      t.integer :declaration_id
      t.string :code
      t.string :container
      t.string :bracket
      t.string :metal_cabinet

      t.timestamps
    end
  end
end
