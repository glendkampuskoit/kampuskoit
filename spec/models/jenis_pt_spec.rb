require 'spec_helper'

describe JenisPt do
  before { @jenispt = JenisPt.new(jenis: "Institut") }

  subject { @jenispt }
  it { should respond_to(:jenis) }

  it { should have_many(:univs) }

  describe "When jenis is blank" do
    before { @jenispt.jenis = " " } 
    it { should_not be_valid }
  end
  
end