require 'spec_helper'

describe ProdiFasilitasGallery do

	before { @prodi_fasilitas_galleries = ProdiFasilitasGallery.new(caption: "gazebo", description:"Ruang kumpul Jurusan Sistem Infromasi", image: File.open(File.join(Rails.root, '/spec/fixtures/files/cangkrukan.jpg')), prodi_fasil: FactoryGirl.create(:prodi_fasil))}

	subject{ @prodi_fasilitas_galleries }

	it { should be_valid } 
  it { should respond_to(:caption) }
  it { should respond_to(:description) }
  it { should respond_to(:prodi_fasil) }
  it { should respond_to(:image) }

  it { should belong_to(:prodi_fasil) }

  describe "when caption is blank" do
  	before { @prodi_fasilitas_galleries.caption = "" }
  	it { should_not be_valid }
  end

  describe "when description is blank" do
  	before { @prodi_fasilitas_galleries.description = "" }
  	it { should_not be_valid }
  end

  describe "when prodi_fasil is blank" do
  	before { @prodi_fasilitas_galleries.prodi_fasil_id = "" }
  	it { should_not be_valid }
  end

  pending "when image is blank" do
  	before { @prodi_fasilitas_galleries.image = "" }
  	it { should_not be_valid }
  end
end