# -*- encoding : utf-8 -*-
require "spec_helper"

describe Dict::CustomsController do
  describe "routing" do

    it "routes to #index" do
      get("/dict_customs").should route_to("dict_customs#index")
    end

    it "routes to #new" do
      get("/dict_customs/new").should route_to("dict_customs#new")
    end

    it "routes to #show" do
      get("/dict_customs/1").should route_to("dict_customs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/dict_customs/1/edit").should route_to("dict_customs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/dict_customs").should route_to("dict_customs#create")
    end

    it "routes to #update" do
      put("/dict_customs/1").should route_to("dict_customs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/dict_customs/1").should route_to("dict_customs#destroy", :id => "1")
    end

  end
end
