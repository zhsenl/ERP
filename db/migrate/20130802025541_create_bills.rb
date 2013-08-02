class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
	  t.string  :pre_entry_no
	  t.string	:bill_no
	  t.string 	:seq_no
	  
	  t.integer :enterprise_id
	  t.string  :trade_code
	  t.date    :issue_date
	  t.string  :in_trade_code
	  t.string  :cop_bill_no
	  t.string  :contr_no
	  t.string  :agent_code
	  t.string  :convey_type
	  t.string  :convey_no
	  t.string  :is_decla_em
	  t.date    :is_decla_date
	  t.string  :note
	  
	  t.integer :in_enterprise_id
	  t.string  :in_trade_code
	  t.date    :in_issue_date
	  t.string  :in_cop_bill_no
	  t.string  :in_agent_code
	  t.string  :in_is_decla_em
	  t.date    :in_is_decla_date
	  t.string  :in_note
	  
	  t.integer :application_id
 
      t.timestamps
    end
  end
end
