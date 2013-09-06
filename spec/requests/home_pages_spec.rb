require 'spec_helper'

describe "Home Page", :js => true do


  subject { page }

  before { visit home_path }

  keypress = "var e = $.Event('keydown', { keyCode: 13 }); $('body').trigger(e);"
  
  pending "Home Page Index" do
    
    it "should have content Kampus" do
      should have_content('Kampus')
    end

    it "Index page should have right title : Kampus.co.id | Trusted Indonesian Campus Review" do
      should have_selector('title', :text => "Kampus.co.id | Trusted Indonesian Campus Review") 
    end

    describe "visitor do search" do
      before do
        fill_in "keyword", with: "airlangga"
        click_button "search_btn"
      end

      it "Should go to all search result page" do
        should have_selector('title', text: "Kampus.co.id - Hasil Pencarian")
      end
    end

    describe "visitor do search with params Perguruan Tinggi" do
      before do
        visit home_path
        fill_in "keyword", with: "airlangga"
        all("a", :text => "Perguruan Tinggi")[1].click
        click_button "search_btn"
      end

      it "Should go to PT search result page" do
        should have_selector('title', text: "Kampus.co.id - Pencarian Perguruan Tinggi")
      end
    end

    describe "visitor do search with params Program Studi" do
      before do
        visit home_path
        fill_in "keyword", with: "kedokteran"
        all("a", :text => "Program Studi")[1].click
        click_button "search_btn"
      end

      it "Should go to Prodi search result page" do
        should have_selector('title', text: "Kampus.co.id - Pencarian Program Studi")
      end
    end
    
    describe "Visitor go to Ranking Page" do
      before do 
        visit home_path
        click_link "Ranking"
      end
      it { should have_selector('title', text: "Ranking Perguruan Tinggi") } 
    end

    pending "Visitor go to Signup page" do
      before do 
        click_link "Signup"
      end
      it { should have_selector('title', text: "Signup") } 
    end
  end

  pending "visitor send feedback" do
    before do
      fill_in "feedback_from", with: "anita@yahoo.com"
      fill_in "feedback_feed", with: "Selamat siang"
    end

    it "should add feedback" do
      expect { click_button "Send" }.to change(Feedback, :count)
    end
  end

end