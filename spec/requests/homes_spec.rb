require 'spec_helper'

describe "Homes" do

  subject { page }

  before { visit home_path }
  
  describe "Home Page Index" do
    
    it "should have content Kampus" do
      page.should have_content('Kampus')
    end

    it "Index page should have right title : Kampus.co.id | Trusted Indonesian Campus Review" do
      page.should have_selector('title', :text => "Kampus.co.id | Trusted Indonesian Campus Review")
    end

    describe "visitor do search" do      
      before do
        fill_in "keyword_all", with: "airlangga"
        click_button "search_all"
      end

      it "should visit search result path" do
        page.should have_selector('title', :text => "Hasil Pencarian")
      end
    end

    describe "visitor do search with params Perguruan Tinggi" do      
      before do
        fill_in "keyword_pt", with: "airlangga"
        click_button "search_pt"
      end

      it "if user choose perguruan tinggi, should visit PT path" do
        page.should have_selector('title', :text => "Perguruan Tinggi")
      end
    end

    describe "visitor do search with params Jurusan" do      
      before do
        fill_in "keyword_prodi", with: "kedokteran"
        click_button "search_prodi"
      end

      it "if user choose jurusan, should visit jurusan path" do
        page.should have_selector('title', :text => "Program Studi")
      end
    end

    describe "Visitor go to Ranking Page" do
      before do 
        click_link "Ranking"
      end
      it { should have_selector('title', text: "Ranking Perguruan Tinggi") } 
    end

    describe "Visitor go to Signup page" do
      before do 
        click_link "Signup"
      end
      it { should have_selector('title', text: "Signup") } 
    end
  end

  describe "visitor send feedback" do
    before do
      fill_in "feedback_from", with: "anita@yahoo.com"
      fill_in "feedback_feed", with: "Selamat siang"
    end

    it "should add feedback" do
      expect { click_button "Send" }.to change(Feedback, :count)
    end

  end
end