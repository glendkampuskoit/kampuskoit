require 'spec_helper'

describe "Search" do
  describe "Search Page" do
    it "should have content Home" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit search_path
      page.should have_content('Hasil Pencarian')
    end
  end
end
