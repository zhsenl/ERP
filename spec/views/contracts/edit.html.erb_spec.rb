# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "contracts/edit" do
  before(:each) do
    @contract = assign(:contract, stub_model(Contract,
      :enterprise_id => 1,
      :operate_enterprise_code_code => "MyString",
      :foreign_enterprise_code => "MyString",
      :manual_code => "MyString",
      :trade_mode_code => "MyString",
      :tax_kind_code => "MyString",
      :export_contract_code => "MyString",
      :export_currency_code => "MyString",
      :export_deal_mode_code => "MyString",
      :import_contract_code => "MyString",
      :import_currency_code => "MyString",
      :import_deal_mode_code => "MyString"
    ))
  end

  it "renders the edit contract form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contracts_path(@contract), :method => "post" do
      assert_select "input#contract_enterprise_id", :name => "contract[enterprise_id]"
      assert_select "input#contract_operate_enterprise_code_code", :name => "contract[operate_enterprise_code_code]"
      assert_select "input#contract_foreign_enterprise_code", :name => "contract[foreign_enterprise_code]"
      assert_select "input#contract_manual_code", :name => "contract[manual_code]"
      assert_select "input#contract_trade_mode_code", :name => "contract[trade_mode_code]"
      assert_select "input#contract_tax_kind_code", :name => "contract[tax_kind_code]"
      assert_select "input#contract_export_contract_code", :name => "contract[export_contract_code]"
      assert_select "input#contract_export_currency_code", :name => "contract[export_currency_code]"
      assert_select "input#contract_export_deal_mode_code", :name => "contract[export_deal_mode_code]"
      assert_select "input#contract_import_contract_code", :name => "contract[import_contract_code]"
      assert_select "input#contract_import_currency_code", :name => "contract[import_currency_code]"
      assert_select "input#contract_import_deal_mode_code", :name => "contract[import_deal_mode_code]"
    end
  end
end
