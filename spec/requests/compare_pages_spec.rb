require 'spec_helper'

describe "Compare page" do

	subject { page }

	let(:prodi_1) { FactoryGirl.create(:prodi) }
	let(:prodi_2) { FactoryGirl.create(:prodi) }

	describe "Compare prodi" do
		before do
			visit home_path
			find(:xpath, "//input[@id='prodi_1']").set prodi_1.id
			find(:xpath, "//input[@id='prodi_2']").set prodi_2.id
			click_button "Compare"
		end
		it { should have_selector('title', text: "Komparasi Program Studi")}
	end
end