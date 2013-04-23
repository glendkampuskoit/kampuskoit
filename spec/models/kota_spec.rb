require 'spec_helper'

describe Kota do
  before { @kota = Kota.new(kota: "ACEH", provinsi: FactoryGirl.create(:provinsi)) }

  subject{ @kota }

  it { should respond_to(:kota) }  
  it { should have_many(:univs).dependent(:delete_all) }
  it { should belong_to(:provinsi) }

  describe "should valid" do
  	it { should be_valid }
  end

  describe "When kota is blank" do
    before { @kota.kota = " " } 
    it { should_not be_valid }
  end

  describe "kota must be unique" do
    before do
      @kota_dup = @kota.dup
      @kota_dup.save
    end
    it { should_not be_valid }
  end

  describe "kota must be unique with case insensitive" do
    before do
      @kota_dup = Kota.new(kota: "aceh", provinsi: FactoryGirl.create(:provinsi)) 
      @kota_dup.save
    end
    it { should_not be_valid }
  end
end
