require 'spec_helper'

describe ProdiGallery do
    before { @prodigallery = ProdiGallery.new(caption: "gazebo", description:"Ruang kumpul Jurusan Sistem Infromasi", path:'A:\START\tutorial') }

    subject{ @prodigallery }
    it { should respond_to(:caption) }
    it { should respond_to(:description) }
    it { should respond_to(:path) }

    it { should belong_to(:prodi) }

    describe "When caption is blank" do
    	before { @prodigallery.caption = " " } 
    	it { should_not be_valid }
  	end

  	describe "When description is blank" do
    	before { @prodigallery.description = " " } 
    	it { should_not be_valid }
  	end

  	describe "When path is blank" do
    	before { @prodigallery.path = " " } 
    	it { should_not be_valid }
  	end
end
