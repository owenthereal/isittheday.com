require "spec_helper"

describe TheDaysController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/the_days" }.should route_to(:controller => "the_days", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/the_days/new" }.should route_to(:controller => "the_days", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/the_days/1" }.should route_to(:controller => "the_days", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/the_days/1/edit" }.should route_to(:controller => "the_days", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/the_days" }.should route_to(:controller => "the_days", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/the_days/1" }.should route_to(:controller => "the_days", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/the_days/1" }.should route_to(:controller => "the_days", :action => "destroy", :id => "1")
    end

  end
end
