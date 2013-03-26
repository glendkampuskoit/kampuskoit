require 'spec_helper'

describe "StaticPages" do
  describe "contact" do
    it "should have title Kontak" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit "/kontak"
      page.should have_selector('title', :text => 'Kontak')
    end
  end

  describe "faq" do
  	it "should have title FAQ" do
  		visit "/faq"
  		page.should have_selector('title', :text => 'FAQ')
  	end
  end

  describe "term" do
  	it "should have title Term & Condition" do
  		visit "/term"
  		page.should have_selector('title', :text => 'Terms & Conditions')
  	end
  end
end
