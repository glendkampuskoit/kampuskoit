require 'spec_helper'

describe "Subscriber Pages" do
	subject { page }

	describe "sign up page" do
		before { visit signup_path }
		it { should have_selector('title', text: 'Signup') } 
	end

	describe "profile page" do
		let (:subscriber) { FactoryGirl.create(:subscriber) }
		before { visit subscriber_path(subscriber) }
		it { should have_selector('title', text: subscriber.name) }
	end

	describe "signup" do
		before { visit signup_path }
		let(:submit) { "Register" }

		describe "with invalid information" do
			it "should not create subscriber" do
				expect { click_button submit }.not_to change(Subscriber, :count)
			end
		end

		describe "with valid information" do
			before do
				fill_in "subscriber_name", with: "Glend Maatita"
				fill_in "subscriber_email", with: "gm_rb@yahoo.com"
				fill_in "subscriber_password", with: "foobar"
				fill_in "subscriber_password_confirmation", with: "foobar"
			end

			it "should create a subscriber" do
				expect { click_button submit }.to change(Subscriber, :count)
			end

			describe "after saving the subscriber" do
				before { click_button submit }
				it { should_not have_link('Logout') }
			end
		end
	end

	describe "confirm email" do
		let(:subscriber) { @subscriber = Subscriber.create(name: "Glend Maatita", email: "gm@yahoo.com", password: "foobar", password_confirmation: "foobar")}
		before { visit "/confirm?token=#{subscriber.remember_token}&memberid=#{subscriber.id}" }
		describe "will change email_activation status" do
			let(:subscriberUpdate) { Subscriber.find(subscriber.id) }
			specify { subscriberUpdate.email_activation.should == true }
		end
	end

	describe "confirm email wont change email activation because id subscriber not match" do
		let(:subscriber) { @subscriber = Subscriber.create(name: "Glend Maatita", email: "glend@yahoo.com", password: "foobar", password_confirmation: "foobar")}
		before { visit "/confirm?token=#{subscriber.remember_token}&memberid=" + '2334' }
		describe "will change email_activation status" do
			let(:subscriberUpdate) { Subscriber.find(subscriber.id) }
			specify { subscriberUpdate.email_activation.should == false }
		end
	end
end