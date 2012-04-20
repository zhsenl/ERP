# -*- encoding : utf-8 -*-
require "spec_helper"

describe ContractProductionsController do
  describe "routing" do

    it "routes to #index" do
      get("/contract_productions").should route_to("contract_productions#index")
    end

    it "routes to #new" do
      get("/contract_productions/new").should route_to("contract_productions#new")
    end

    it "routes to #show" do
      get("/contract_productions/1").should route_to("contract_productions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/contract_productions/1/edit").should route_to("contract_productions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/contract_productions").should route_to("contract_productions#create")
    end

    it "routes to #update" do
      put("/contract_productions/1").should route_to("contract_productions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/contract_productions/1").should route_to("contract_productions#destroy", :id => "1")
    end

  end
end
