# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "ContractConsumptions" do
  describe "GET /contract_consumptions" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get contract_consumptions_path
      response.status.should be(200)
    end
  end
end