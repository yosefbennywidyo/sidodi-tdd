require "rails_helper"

RSpec.describe IncomingMailsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/incoming_mails").to route_to("incoming_mails#index")
    end

    it "routes to #new" do
      expect(:get => "/incoming_mails/new").to route_to("incoming_mails#new")
    end

    it "routes to #show" do
      expect(:get => "/incoming_mails/1").to route_to("incoming_mails#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/incoming_mails/1/edit").to route_to("incoming_mails#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/incoming_mails").to route_to("incoming_mails#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/incoming_mails/1").to route_to("incoming_mails#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/incoming_mails/1").to route_to("incoming_mails#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/incoming_mails/1").to route_to("incoming_mails#destroy", :id => "1")
    end

  end
end
