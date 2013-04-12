require 'spec_helper'

describe Univgallery do

  before { @univgallery = Univgallery.new(caption: "Fakutas Teknologi Informasi", description:"Kantor Pusat Fakultas Teknologi Informasi") }

  subject{ @univgallery }
  it { should respond_to(:caption) }
  it { should respond_to(:description) }

  it { should belong_to(:univ) }

  describe "When caption is blank" do
    before { @univgallery.caption = " " }
    it { should_not be_valid }
  end
  describe "When description is blank" do
    before { @univgallery.description = " " } 
    it { should_not be_valid }
  end
end
