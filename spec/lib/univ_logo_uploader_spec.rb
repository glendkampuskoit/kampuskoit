require 'carrierwave/test/matchers'

describe UnivLogoUploader do 
	include CarrierWave::Test::Matchers

	let(:univ) { FactoryGirl.create(:univ) }

	before do

		UnivLogoUploader.enable_processing = true
		@uploader = UnivLogoUploader.new(univ, :logo)
		@uploader.store!(File.open("spec/fixtures/files/cangkrukan.jpg"))
	end

	after do
		UnivLogoUploader.enable_processing = false
		@uploader.remove!
	end

	context "the thumb version" do
		it "should have size 190x130 px" do
			@uploader.thumb.should have_dimensions(190, 130)
		end
	end
end