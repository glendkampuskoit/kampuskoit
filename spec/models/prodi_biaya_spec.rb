require 'spec_helper'

describe ProdiBiaya do

  before { @prodibiaya = ProdiBiaya.new(prodi: FactoryGirl.create(:prodi), biaya: "Uang Pangkal Gedung", nilai:"1.000.0000") }

  subject{ @prodibiaya }
  it { should respond_to(:biaya) }
  it { should respond_to(:nilai) }
  it { should respond_to(:prodi) }

  it { should belong_to(:prodi) }

  describe "should be valid" do
    it { should be_valid }
  end

  describe "When prodi is blank" do
    before { @prodibiaya.prodi = nil } 
    it { should_not be_valid }
  end

  describe "When biaya is blank" do
    before { @prodibiaya.biaya = "" } 
    it { should_not be_valid }
  end

  describe "When nilai is blank" do
    before { @prodibiaya.nilai = "" }
    it { should_not be_valid }
  end
end
