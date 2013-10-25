require 'spec_helper'

describe "Home Page", :js => true do

  subject { page }

  before { visit home_path }
  
  describe "Home Page Index" do

    describe "visitor do search" do
      before do
        fill_in "keyword", with: "airlangga"
        click_button "search_btn"
      end

      it "Should go to all search result page" do
        should have_selector('title', text: "Kampus.co.id - Pencarian Perguruan Tinggi")
      end
    end
    
    describe "Visitor go to Ranking Page" do
      before do 
        visit home_path
        click_link "Ranking"
      end
      it { should have_selector('title', text: "Ranking Perguruan Tinggi") } 
    end
  end
end