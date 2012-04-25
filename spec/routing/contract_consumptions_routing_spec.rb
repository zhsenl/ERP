# -*- encoding : utf-8 -*-
require "spec_helper"

describe ContractConsumptionsController do
  describe "routing" do

    it "routes to #index" do
      get("/contract_consumptions").should route_to("contract_consumptions#index")
    end

    it "routes to #new" do
      get("/contract_consumptions/new").should route_to("contract_consumptions#new")
    end

    it "routes to #show" do
      get("/contract_consumptions/1").should route_to("contract_consumptions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/contract_consumptions/1/edit").should route_to("contract_consumptions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/contract_consumptions").should route_to("contract_consumptions#create")
    end

    it "routes to #update" do
      put("/contract_consumptions/1").should route_to("contract_consumptions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/contract_consumptions/1").should route_to("contract_consumptions#destroy", :id => "1")
    end

  end
end
