# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "cargos/show" do
  before(:each) do
    @cargo = assign(:cargo, stub_model(Cargo,
      :enterprise_id => 1,
      :code => "Code",
      :name => "Name",
      :specification => "Specification",
      :unit => "Unit",
      :unit1 => "Unit1",
      :unit2 => "Unit2",
      :country => "Country"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Code/)
    rendered.should match(/Name/)
    rendered.should match(/Specification/)
    rendered.should match(/Unit/)
    rendered.should match(/Unit1/)
    rendered.should match(/Unit2/)
    rendered.should match(/Country/)
  end
end
