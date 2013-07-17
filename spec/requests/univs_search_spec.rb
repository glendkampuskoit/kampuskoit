require 'spec_helper'

describe "Univ Search", :js => true do

  let(:search_pt) { "search_pt" }

  keypress = "var e = $.Event('keydown', { keyCode: 13 }); $('body').trigger(e);"

  before do
    visit home_path
    fill_in "keyword", with: "Surabaya"
    page.driver.execute_script(keypress)
  end

  describe "univ index page" do
    it "should have title Pencarian Perguruan Tinggi" do
      page.should have_selector('title', :text => 'Pencarian Perguruan Tinggi')
                                                   
    end
  end

  describe "go to univ profile page" do
    before do
      fill_in "keyword", with: "Surabaya"
      page.driver.execute_script(keypress)
    end
    it "should do search" do
      page.should have_selector('title', :text => 'Pencarian Perguruan Tinggi')
    end
  end
end
