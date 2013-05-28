require 'spec_helper'

describe "Update Subscriber Profile Pages" do
	subject { page }

	describe "update profile subscriber" do
		let(:subscriber) { FactoryGirl.create(:subscriber) }
		before { visit edit_update_subscriber_profile_path(subscriber) }

		it { should have_selector('title', :text => "Update Profile") }

		describe "edit profile" do
			before do
				fill_in "subscriber[name]", with: subscriber.name 
				select(subscriber.kota.kota, :from => "subscriber[tempat_lahir]")
				fill_in "subscriber[tanggal_lahir]", with: subscriber.tanggal_lahir
				select("Islam", :from => "subscriber[agama]")
				choose('subscriber[jenis_kelamin]')
				choose('subscriber[status_pernikahan]')
				fill_in "subscriber[alamat]", with: subscriber.alamat
				fill_in "subscriber[kodepos]", with: subscriber.kodepos
				fill_in "subscriber[telepon]", with: subscriber.telepon
				fill_in "subscriber[no_hp]", with: subscriber.no_hp
				select(subscriber.kota.provinsi.provinsi, :from => "subscriber[provinsi_id]")
				select(subscriber.kota.kota, :from => "subscriber[kota_id]")
			end

			it "should update subscriber" do
	      expect { click_button "Update Profile" }.not_to change(Subscriber, :count)
	    end


		end
	end

end

