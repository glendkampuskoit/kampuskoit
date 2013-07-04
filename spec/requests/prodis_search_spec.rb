require 'spec_helper'

describe "Prodi Search" do

  let(:search_prodi) { "search_prodi" }
  before do
    visit home_path
    fill_in "keyword_prodi", with: "Ekonomi"
    click_button search_prodi
  end

  describe "prodi index page" do
    it "should have title Jurusan" do
      page.should have_selector('title', :text => 'Pencarian Program Studi')
    end
  end

  describe "go to jurusan profile page" do
    before do
      fill_in "keyword_prodi", with: "Ekonomi"
      click_button search_prodi
    end
    it "should do search" do
      page.should have_selector('title', :text => 'Pencarian Program Studi')
    end
  end
end
