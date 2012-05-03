# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "contracts/index" do
  before(:each) do
    assign(:contracts, [
      stub_model(Contract,
        :enterprise_id => 1,
        :operate_enterprise_code_code => "Operate Enterprise Code",
        :foreign_enterprise_code => "Foreign Enterprise Code",
        :manual_code => "Manual Code",
        :trade_mode_code => "Trade Mode Code",
        :tax_kind_code => "Tax Kind Code",
        :export_contract_code => "Export Contract Code",
        :export_currency_code => "Export Currency Code",
        :export_deal_mode_code => "Export Deal Mode Code",
        :import_contract_code => "Import Contract Code",
        :import_currency_code => "Import Currency Code",
        :import_deal_mode_code => "Import Deal Mode Code"
      ),
      stub_model(Contract,
        :enterprise_id => 1,
        :operate_enterprise_code_code => "Operate Enterprise Code",
        :foreign_enterprise_code => "Foreign Enterprise Code",
        :manual_code => "Manual Code",
        :trade_mode_code => "Trade Mode Code",
        :tax_kind_code => "Tax Kind Code",
        :export_contract_code => "Export Contract Code",
        :export_currency_code => "Export Currency Code",
        :export_deal_mode_code => "Export Deal Mode Code",
        :import_contract_code => "Import Contract Code",
        :import_currency_code => "Import Currency Code",
        :import_deal_mode_code => "Import Deal Mode Code"
      )
    ])
  end

  it "renders a list of contracts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Operate Enterprise Code".to_s, :count => 2
    assert_select "tr>td", :text => "Foreign Enterprise Code".to_s, :count => 2
    assert_select "tr>td", :text => "Manual Code".to_s, :count => 2
    assert_select "tr>td", :text => "Trade Mode Code".to_s, :count => 2
    assert_select "tr>td", :text => "Tax Kind Code".to_s, :count => 2
    assert_select "tr>td", :text => "Export Contract Code".to_s, :count => 2
    assert_select "tr>td", :text => "Export Currency Code".to_s, :count => 2
    assert_select "tr>td", :text => "Export Deal Mode Code".to_s, :count => 2
    assert_select "tr>td", :text => "Import Contract Code".to_s, :count => 2
    assert_select "tr>td", :text => "Import Currency Code".to_s, :count => 2
    assert_select "tr>td", :text => "Import Deal Mode Code".to_s, :count => 2
  end
end
