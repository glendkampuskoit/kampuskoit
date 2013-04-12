require 'spec_helper'

describe UnivFasilitasGallery do
  before { @universitasgallery = UnivFasilitasGallery.new(caption: "Halaman Rektorat", description:"Tampilan rektorat dari arah depan") }

  subject{ @universitasgallery }
  it { should respond_to(:caption) }
  it { should respond_to(:description) }

  it { should belong_to(:univfasilitas) }

    describe "When caption is blank" do
    before { @universitasgallery.caption = " " } 
    it { should_not be_valid }
  end
  describe "When description is blank" do
    before { @universitasgallery.description = " " } 
    it { should_not be_valid }
  end
end
