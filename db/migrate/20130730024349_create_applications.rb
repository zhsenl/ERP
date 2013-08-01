class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
	  t.date    :end_date
	  t.string	:app_no
	  t.string 	:seq_no
	  t.boolean  :lw_mark
	  t.boolean  :declare_type
	  
	  t.integer :enterprise_id
	  t.boolean  :app_class
	  t.string  :trade_code
	  t.string  :in_trade_code
	  t.string  :ems_no
	  t.string  :mast_cust
	  t.string  :dict_code
	  t.string  :in_dict_code
	  t.string  :lice_no
	  t.string  :cop_app_no
	  t.string  :contr_no
	  t.string  :agent_code
	  t.date    :d_date
	  t.integer :convey_spa
	  t.integer :convey_day
	  t.string  :corp
	  t.string  :decl
	  t.string  :note
	  
	  t.integer :in_enterprise_id
	  t.string  :in_cop_app_no
	  t.string  :in_ems_no
	  t.string  :in_mast_cust
	  t.string  :in_agent_code
	  t.date    :in_declare_date
	  t.string  :in_corp
	  t.string  :in_decl
	  t.string  :in_note
 
      t.timestamps
    end
  end
end
