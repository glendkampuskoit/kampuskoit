require 'spec_helper'

describe "Subscriber Pages" do
	subject { page }

	pending "sign up page" do
		before { visit signup_path }
		it { should have_selector('title', text: 'Signup') } 
	end

	pending "profile page" do
		let (:subscriber) { FactoryGirl.create(:subscriber) }
		before { visit subscriber_path(subscriber) }
		it { should have_selector('title', text: subscriber.name) }
	end

	pending "signup" do
		before { visit signup_path }
		let(:submit) { "Register" }

		pending "with invalid information" do
			it "should not create subscriber" do
				expect { click_button submit }.not_to change(Subscriber, :count)
			end
		end

		pending "with valid information" do
			before do
				fill_in "subscriber_name", with: "Glend Maatita"
				fill_in "subscriber_email", with: "gm_rb@yahoo.com"
				fill_in "subscriber_password", with: "foobar"
				fill_in "subscriber_password_confirmation", with: "foobar"
			end

			it "should create a subscriber" do
				expect { click_button submit }.to change(Subscriber, :count)
			end

			pending "after saving the subscriber" do
				before { click_button submit }
				it { should_not have_link('Logout') }
			end
		end
	end

	pending "confirm email" do
		let(:subscriber) { @subscriber = Subscriber.create(name: "Glend Maatita", email: "gm@yahoo.com", password: "foobar", password_confirmation: "foobar")}
		before { visit "/confirm?token=#{subscriber.remember_token}&memberid=#{subscriber.id}" }
		pending "will change email_activation status" do
			let(:subscriberUpdate) { Subscriber.find(subscriber.id) }
			specify { subscriberUpdate.email_activation.should == true }
		end
	end

	pending "confirm email wont change email activation because id subscriber not match" do
		let(:subscriber) { @subscriber = Subscriber.create(name: "Glend Maatita", email: "glend@yahoo.com", password: "foobar", password_confirmation: "foobar")}
		before { visit "/confirm?token=#{subscriber.remember_token}&memberid=" + '2334' }
		pending "will change email_activation status" do
			let(:subscriberUpdate) { Subscriber.find(subscriber.id) }
			specify { subscriberUpdate.email_activation.should == false }
		end
	end

	describe "go to subscriber list" do
		before { visit subscribers_list_path }

		it { should have_selector('title', text: "Data Subscriber") }
	end

end