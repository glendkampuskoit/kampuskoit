require 'spec_helper'

describe ProdiGallery do
    before { @prodigallery = ProdiGallery.new(caption: "gazebo", description:"Ruang kumpul Jurusan Sistem Infromasi", image: File.open(File.join(Rails.root, '/spec/fixtures/files/cangkrukan.jpg')), prodi: FactoryGirl.create(:prodi)) }

    subject{ @prodigallery }
    it { should respond_to(:caption) }
    it { should respond_to(:description) }
    it { should respond_to(:image) }
    it { should respond_to(:prodi) }

    it { should belong_to(:prodi) }

    describe "should be valid" do
      it { should be_valid }
    end

    describe "When caption is blank" do
    	before { @prodigallery.caption = "" } 
    	it { should_not be_valid }
  	end

  	describe "When description is blank" do
    	before { @prodigallery.description = "" } 
    	it { should_not be_valid }
  	end

  	describe "When image is blank" do
    	before { @prodigallery.image = "" } 
    	it { should_not be_valid }
  	end
end
