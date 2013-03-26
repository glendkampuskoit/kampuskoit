require 'spec_helper'

describe "Homes" do
  describe "Home Page Index" do
    it "should have content Home" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit home_path
      page.should have_content('Home')
    end

    it "Index page should have right title : CampusSight | Home" do
	  	visit home_path
	  	page.should have_selector('title', :text => "CampusSight | Home")
  	end
  end
end
