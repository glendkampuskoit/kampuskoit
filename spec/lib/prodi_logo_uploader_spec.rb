require 'carrierwave/test/matchers'

describe ProdiLogoUploader do 
	include CarrierWave::Test::Matchers

	let(:prodi) { FactoryGirl.create(:prodi) }

	before do

		ProdiLogoUploader.enable_processing = true
		@uploader = ProdiLogoUploader.new(prodi, :logo)
		@uploader.store!(File.open("spec/fixtures/files/cangkrukan.jpg"))
	end

	after do
		ProdiLogoUploader.enable_processing = false
		@uploader.remove!
	end

	context "the thumb version" do
		it "should have size 190x130 px" do
			@uploader.thumb.should have_dimensions(190, 130)
		end
	end
end