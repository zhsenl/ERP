# -*- encoding : utf-8 -*-
require "spec_helper"

describe ContractMaterialsController do
  describe "routing" do

    it "routes to #index" do
      get("/contract_materials").should route_to("contract_materials#index")
    end

    it "routes to #new" do
      get("/contract_materials/new").should route_to("contract_materials#new")
    end

    it "routes to #show" do
      get("/contract_materials/1").should route_to("contract_materials#show", :id => "1")
    end

    it "routes to #edit" do
      get("/contract_materials/1/edit").should route_to("contract_materials#edit", :id => "1")
    end

    it "routes to #create" do
      post("/contract_materials").should route_to("contract_materials#create")
    end

    it "routes to #update" do
      put("/contract_materials/1").should route_to("contract_materials#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/contract_materials/1").should route_to("contract_materials#destroy", :id => "1")
    end

  end
end
