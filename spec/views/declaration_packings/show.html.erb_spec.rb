require 'spec_helper'

describe "declaration_packings/show" do
  before(:each) do
    @declaration_packing = assign(:declaration_packing, stub_model(DeclarationPacking,
      :declaration_id => 1,
      :name => "Name",
      :package_amount => 2,
      :quantity => "9.99",
      :unit => "Unit",
      :gross_weight => "9.99",
      :net_weight => "9.99",
      :gross_weight_per_package => "9.99",
      :net_weight_per_package => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Name/)
    rendered.should match(/2/)
    rendered.should match(/9.99/)
    rendered.should match(/Unit/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
    rendered.should match(/9.99/)
  end
end
