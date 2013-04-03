require 'spec_helper'

describe "Homes" do
  describe "Home Page Index" do
    before { visit home_path }
    let(:submit) { "Search" }
    it "should have content Home" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      page.should have_content('Home')
    end

    it "Index page should have right title : CampusSight | Home" do
	  	#visit home_path
	  	page.should have_selector('title', :text => "CampusSight | Home")
  	end

    describe "visitor do search" do      
      before do
        fill_in "keyword", with: "airlangga"
        select("Semua", :from => "parameters")
        click_button submit
      end

      it "should visit search result path" do
        page.should have_selector('title', :text => "Hasil Pencarian")
      end
    end

    describe "visitor do search with params Perguruan Tinggi" do      
      before do
        fill_in "keyword", with: "airlangga"
        select("Perguruan Tinggi", :from => "parameters")
        click_button submit
      end

      it "if user choose perguruan tinggi, should visit PT path" do
        page.should have_selector('title', :text => "Perguruan Tinggi")
      end
    end

    describe "visitor do search with params Jurusan" do      
      before do
        fill_in "keyword", with: "kedokteran"
        select("Jurusan", :from => "parameters")
        click_button submit
      end

      it "if user choose jurusan, should visit jurusan path" do
        page.should have_selector('title', :text => "Jurusan")
      end
    end
  end
end


      

      