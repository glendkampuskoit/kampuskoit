require 'spec_helper'

describe "Subscriber Pages" do
	subject { page }
	
	describe "go to subscriber list" do
		before { visit subscribers_list_path }
		it { should have_selector('title', text: "Data Subscriber") }
	end
end