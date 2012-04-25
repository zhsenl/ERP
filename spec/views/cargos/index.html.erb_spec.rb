# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "cargos/index" do
  before(:each) do
    assign(:cargos, [
      stub_model(Cargo,
        :enterprise_id => 1,
        :code => "Code",
        :name => "Name",
        :specification => "Specification",
        :unit => "Unit",
        :unit1 => "Unit1",
        :unit2 => "Unit2",
        :country => "Country"
      ),
      stub_model(Cargo,
        :enterprise_id => 1,
        :code => "Code",
        :name => "Name",
        :specification => "Specification",
        :unit => "Unit",
        :unit1 => "Unit1",
        :unit2 => "Unit2",
        :country => "Country"
      )
    ])
  end

  it "renders a list of cargos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Specification".to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => "Unit1".to_s, :count => 2
    assert_select "tr>td", :text => "Unit2".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
  end
end
