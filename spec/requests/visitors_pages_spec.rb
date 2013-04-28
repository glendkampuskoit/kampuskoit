require 'spec_helper'

describe "Visitor" do

  describe "Visitor subscriber" do
    before { visit root_path }
    let(:submit) { "Subscribe" }

    describe "visitor subscriber with invalid information" do
      it "should not create new subscriber" do
        expect { click_button submit }.not_to change(Visitor, :count)
      end
      it "should not create new subscriber" do
        expect { click_button submit }.not_to change(Visitor, :count)
      end
    end

    describe "visitor with valid information" do
      before do
        fill_in "email", with: "visitor@example.com"
      end
      it "should create a visitor" do
        expect { click_button submit }.to change(Visitor, :count)
      end
    end
  end
end
