require 'spec_helper'

describe "Prodi Search", :js => true do

  let(:search_prodi) { "search_prodi" }

  keypress = "var e = $.Event('keydown', { keyCode: 13 }); $('body').trigger(e);"
  
  before do
    visit home_path
    page.find('a', :id => 'prodi').click
    fill_in "keyword", with: "Ekonomi"
    page.driver.execute_script(keypress)
  end

  describe "prodi index page" do
    it "should have title Jurusan" do
      page.should have_selector('title', :content => 'Pencarian Program Studi')
    end
  end

  describe "go to jurusan profile page" do
    before do
      fill_in "keyword", with: "Ekonomi"
      page.driver.execute_script(keypress)
    end
    it "should do search" do
      page.should have_selector('title', :content => 'Pencarian Program Studi')
    end
  end
end
