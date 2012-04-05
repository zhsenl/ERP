# -*- encoding : utf-8 -*-
require "spec_helper"

describe ForeignEnterprisesController do
  describe "routing" do

    it "routes to #index" do
      get("/foreign_enterprises").should route_to("foreign_enterprises#index")
    end

    it "routes to #new" do
      get("/foreign_enterprises/new").should route_to("foreign_enterprises#new")
    end

    it "routes to #show" do
      get("/foreign_enterprises/1").should route_to("foreign_enterprises#show", :id => "1")
    end

    it "routes to #edit" do
      get("/foreign_enterprises/1/edit").should route_to("foreign_enterprises#edit", :id => "1")
    end

    it "routes to #create" do
      post("/foreign_enterprises").should route_to("foreign_enterprises#create")
    end

    it "routes to #update" do
      put("/foreign_enterprises/1").should route_to("foreign_enterprises#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/foreign_enterprises/1").should route_to("foreign_enterprises#destroy", :id => "1")
    end

  end
end
