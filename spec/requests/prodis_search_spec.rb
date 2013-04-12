require 'spec_helper'

describe "Prodi Search" do

  let(:submit) { "Search" }
  before do
    visit home_path
    fill_in "keyword", with: "Ekonomi"
    select("Jurusan", :from => "parameters")
    click_button submit
  end

  describe "prodi index page" do
    it "should have title Jurusan" do
      page.should have_selector('title', :text => 'Jurusan')
    end
  end

  describe "go to jurusan profile page" do
    before do
      fill_in "keyword", with: "Ekonomi"
      click_button submit
    end
    it "should do search" do
      page.should have_selector('title', :text => 'Jurusan')
    end
  end
end
