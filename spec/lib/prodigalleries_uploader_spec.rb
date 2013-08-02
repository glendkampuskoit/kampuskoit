require 'carrierwave/test/matchers'

describe ProdigalleriesUploader do 
	include CarrierWave::Test::Matchers

	let(:prodigallery) { FactoryGirl.create(:prodigallery) }

	before do

		ProdigalleriesUploader.enable_processing = true
		@uploader = ProdigalleriesUploader.new(prodigallery, :image)
		@uploader.store!(File.open("spec/fixtures/files/cangkrukan.jpg"))
	end

	after do
		ProdigalleriesUploader.enable_processing = false
		@uploader.remove!
	end

	context "the thumb version" do
		it "should have size 190x130 px" do
			@uploader.thumb.should have_dimensions(65, 65)
		end
	end

	context "the slide version" do
		it "should have size 190x130 px" do
			@uploader.slide.should have_dimensions(640, 426)
		end
	end
end