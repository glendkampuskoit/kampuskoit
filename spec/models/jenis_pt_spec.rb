require 'spec_helper'

describe JenisPt do
  
  before { @jenispt = JenisPt.new(jenis: "Institut") }

  subject { @jenispt }

  it { should respond_to(:jenis) }
  
  it { should have_many(:univs).dependent(:delete_all) }

  describe "jenis PT must be unique" do
    before do
      @jenispt_dup = @jenispt.dup
      @jenispt_dup.save
    end
    it { should_not be_valid }
  end

  describe "jenis PT must be unique with case insensitive" do
    before do
      @jenispt_dup = JenisPt.new(jenis: "institut") 
      @jenispt_dup.save
    end
    it { should_not be_valid }
  end

  describe "when everything is valid" do
  	it { should be_valid }  
  end

  describe "When jenis is blank" do
    before { @jenispt.jenis = " " } 
    it { should_not be_valid }  
  end  
end