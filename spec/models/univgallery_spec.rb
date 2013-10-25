require 'spec_helper'

describe Univgallery do

  before { @univgallery = Univgallery.new(univ: FactoryGirl.create(:univ), 
    caption: "Fakutas Teknologi Informasi", 
    description:"Kantor Pusat Fakultas Teknologi Informasi",
    image: File.open(File.join(Rails.root, '/spec/fixtures/files/cangkrukan.jpg')) ) }

  subject{ @univgallery }
  
  it { should respond_to(:caption) }
  it { should respond_to(:description) }
  it { should respond_to(:univ) }
  it { should respond_to(:image) }

  it { should belong_to(:univ) }

  describe "should be valid" do
    it { should be_valid }
  end

  describe "When caption is blank" do
    before { @univgallery.caption = "" }
    it { should_not be_valid }
  end

  describe "When description is blank" do
    before { @univgallery.description = "" } 
    it { should_not be_valid }
  end
end