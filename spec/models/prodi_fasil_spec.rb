require 'spec_helper'

describe ProdiFasil do
  before { @prodifasil = ProdiFasil.new(fasilitas: "NANGGROE ACEH DARUSSALAM") }
  
  subject{ @prodifasil }
  it { should respond_to(:fasilitas) }
  
  it { should belong_to(:prodi) }
  
  describe "When fasilitas is blank" do
    before { @prodifasil.fasilitas = " " } 
    it { should_not be_valid }
  end
  
end
