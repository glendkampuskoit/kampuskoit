require 'spec_helper'

describe ProdiFasil do
  before { @prodifasil = ProdiFasil.new(fasilitas: "Perpustakaan", prodi: FactoryGirl.create(:prodi)) }
  
  subject{ @prodifasil }
  it { should respond_to(:fasilitas) }
  it { should respond_to(:prodi) }
  
  it { should belong_to(:prodi) }

  describe "should be valid" do
  	it { should be_valid }
  end
  
  describe "When fasilitas is blank" do
    before { @prodifasil.fasilitas = "" } 
    it { should_not be_valid }
  end

  describe "Prodi & Fasilitas must be unique with case insensitive" do
    before do
      @prodifasil_dup = ProdiFasil.new(fasilitas: "perpustakaan", prodi: @prodifasil.prodi)
      @prodifasil_dup.save
    end
    it { should_not be_valid }
  end
end