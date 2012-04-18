# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "contracts/show" do
  before(:each) do
    @contract = assign(:contract, stub_model(Contract,
      :enterprise_id => 1,
      :operating_enterprise_code => "Operating Enterprise Code",
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Operating Enterprise Code/)
    rendered.should match(/Foreign Enterprise Code/)
    rendered.should match(/Manual Code/)
    rendered.should match(/Trade Mode Code/)
    rendered.should match(/Tax Kind Code/)
    rendered.should match(/Export Contract Code/)
    rendered.should match(/Export Currency Code/)
    rendered.should match(/Export Deal Mode Code/)
    rendered.should match(/Import Contract Code/)
    rendered.should match(/Import Currency Code/)
    rendered.should match(/Import Deal Mode Code/)
  end
end
