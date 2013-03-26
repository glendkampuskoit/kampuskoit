require 'spec_helper'

describe "User Pages" do
	subject { page }

	describe "sign up page" do
		before { visit signup_path }
		it { should have_selector('title', text: 'Sign Up') } 
	end

	describe "profile page" do
		let (:user) { FactoryGirl.create(:user) }
		before { visit user_path(user) }
		it { should have_selector('title', text: user.name) }
	end

	describe "signup" do
		before { visit signup_path }
		let(:submit) { "Create New Account" }

		describe "with invalid information" do
			it "should not create user" do
				expect { click_button submit }.not_to change(User, :count)
			end
		end

		describe "with valid information" do
			before do
				fill_in "Name", with: "Example User"
				fill_in "Email", with: "user@example.com"
				fill_in "Password", with: "foobar"
				fill_in "Confirmation", with: "foobar"
			end

			it "should create a user" do
				expect { click_button submit }.to change(User, :count)
			end

			describe "after saving the user" do
				before { click_button submit }
				it { should_not have_link('Logout') }
			end
		end
	end

	describe "confirm email" do
		let(:user) { @user = User.create(name: "Glend Maatita", email: "glend_maatita@yahoo.com", password: "foobar", password_confirmation: "foobar")}
		before { visit "/confirm?token=#{user.remember_token}&memberid=#{user.id}" }
		describe "will change email_activation status" do
			let(:userUpdate) { User.find(user.id) }
			specify { userUpdate.email_activation.should == true }
		end
	end

	describe "confirm email wont change email activation because id user not match" do
		let(:user) { @user = User.create(name: "Glend Maatita", email: "glend_maatita@yahoo.com", password: "foobar", password_confirmation: "foobar")}
		before { visit "/confirm?token=#{user.remember_token}&memberid=" + '2334' }
		describe "will change email_activation status" do
			let(:userUpdate) { User.find(user.id) }
			specify { userUpdate.email_activation.should == false }
		end
	end
end