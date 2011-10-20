require "spec_helper"

describe SalariesController do
  describe "routing" do

    it "routes to #index" do
      get("/salaries").should route_to("salaries#index")
    end

    it "routes to #new" do
      get("/salaries/new").should route_to("salaries#new")
    end

    it "routes to #show" do
      get("/salaries/1").should route_to("salaries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/salaries/1/edit").should route_to("salaries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/salaries").should route_to("salaries#create")
    end

    it "routes to #update" do
      put("/salaries/1").should route_to("salaries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/salaries/1").should route_to("salaries#destroy", :id => "1")
    end

  end
end
