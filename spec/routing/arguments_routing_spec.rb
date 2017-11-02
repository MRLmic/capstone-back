require "rails_helper"

RSpec.describe ArgumentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/arguments").to route_to("arguments#index")
    end


    it "routes to #show" do
      expect(:get => "/arguments/1").to route_to("arguments#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/arguments").to route_to("arguments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/arguments/1").to route_to("arguments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/arguments/1").to route_to("arguments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/arguments/1").to route_to("arguments#destroy", :id => "1")
    end

  end
end
