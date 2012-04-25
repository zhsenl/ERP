# -*- encoding : utf-8 -*-
require "spec_helper"

describe ContractProductsController do
  describe "routing" do

    it "routes to #index" do
      get("/contract_products").should route_to("contract_products#index")
    end

    it "routes to #new" do
      get("/contract_products/new").should route_to("contract_products#new")
    end

    it "routes to #show" do
      get("/contract_products/1").should route_to("contract_products#show", :id => "1")
    end

    it "routes to #edit" do
      get("/contract_products/1/edit").should route_to("contract_products#edit", :id => "1")
    end

    it "routes to #create" do
      post("/contract_products").should route_to("contract_products#create")
    end

    it "routes to #update" do
      put("/contract_products/1").should route_to("contract_products#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/contract_products/1").should route_to("contract_products#destroy", :id => "1")
    end

  end
end
