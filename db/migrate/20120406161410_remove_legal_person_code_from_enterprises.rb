class RemoveLegalPersonCodeFromEnterprises < ActiveRecord::Migration
  def up
    remove_column :enterprises, :legal_person_code
      end

  def down
    add_column :enterprises, :legal_person_code, :string
  end
end
