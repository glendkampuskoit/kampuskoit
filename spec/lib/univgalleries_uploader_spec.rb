require 'carrierwave/test/matchers'

describe UnivgalleriesUploader do 
	include CarrierWave::Test::Matchers

	let(:univgallery) { FactoryGirl.create(:univgallery) }

	before do

		UnivgalleriesUploader.enable_processing = true
		@uploader = UnivgalleriesUploader.new(univgallery, :image)
		@uploader.store!(File.open("spec/fixtures/files/cangkrukan.jpg"))
	end

	after do
		UnivgalleriesUploader.enable_processing = false
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