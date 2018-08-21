require "rails_helper"

RSpec.describe JokesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/jokes").to route_to("jokes#index")
    end


    it "routes to #show" do
      expect(:get => "/jokes/1").to route_to("jokes#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/jokes").to route_to("jokes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/jokes/1").to route_to("jokes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/jokes/1").to route_to("jokes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/jokes/1").to route_to("jokes#destroy", :id => "1")
    end

  end
end
