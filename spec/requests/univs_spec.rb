require 'spec_helper'

describe "Univ" do

  let(:submit) { "Search" }
  before do
    visit home_path
    fill_in "keyword", with: "Surabaya"
    select("Perguruan Tinggi", :from => "parameters")
    click_button submit
  end

  describe "univ index page" do
    it "should have title Perguruan Tinggi" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      page.should have_selector('title', :text => 'Perguruan Tinggi')
    end
  end

  describe "go to univ profile page" do
    before do
      fill_in "keyword", with: "Surabaya"
      click_button submit
    end
    it "should do search" do
      page.should have_selector('title', :text => 'Perguruan Tinggi')
    end
  end
end
