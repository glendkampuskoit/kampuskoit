require 'spec_helper'

describe "Univ Search" do

  let(:search_pt) { "search_pt" }
  before do
    visit home_path
    fill_in "keyword_pt", with: "Surabaya"
    click_button search_pt
  end

  describe "univ index page" do
    it "should have title Pencarian Perguruan Tinggi" do
      page.should have_selector('title', :text => 'Pencarian Perguruan Tinggi')
    end
  end

  describe "go to univ profile page" do
    before do
      fill_in "keyword_pt", with: "Surabaya"
      click_button search_pt
    end
    it "should do search" do
      page.should have_selector('title', :text => 'Pencarian Perguruan Tinggi')
    end
  end
end
