require 'spec_helper'

describe "Univ Search", :js => true do

  let(:search_pt) { "search_pt" }

  subject { page }

  keypress = "var e = $.Event('keydown', { keyCode: 13 }); $('body').trigger(e);"

  before do
    visit home_path
    page.find('a', :id => 'pt').click
    fill_in "keyword", with: "Surabaya"
    page.driver.execute_script(keypress)
  end

  describe "univ index page" do
    it "should have title Pencarian Perguruan Tinggi" do
      page.should have_selector('title', :content => 'Pencarian Perguruan Tinggi')
    end
  end

  describe "go to univ page" do
    before do
      visit univs_path
    end
    
    it "should at search page" do
      page.should have_selector('title', :content => 'Pencarian Perguruan Tinggi')
    end
  end
end
