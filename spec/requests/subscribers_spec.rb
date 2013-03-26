require 'spec_helper'

describe "Subscriber" do
  describe "landing page" do
    it "should have title Welcome" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit "/subscribers/new"
      page.should have_selector('title', :text => 'Welcome')
    end
  end

  describe "Visitor subscribe" do
    before { visit subscribe_path }
    let(:submit) { "Subscribe" }

    describe "visitor subscribe with invalid information" do
      it "should not create new subscriber" do
        expect { click_button submit }.not_to change(Subscriber, :count)
      end
      it "should not create new subscriber" do
        expect { click_button submit }.not_to change(Subscriber, :count)
      end
    end

    describe "visitor subscribe with valid information" do
      before do
        fill_in "email", with: "user@example.com"
      end
      it "should create a user" do
        expect { click_button submit }.to change(Subscriber, :count)
      end
    end
  end
end
