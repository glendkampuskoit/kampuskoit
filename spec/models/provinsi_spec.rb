require 'spec_helper'

describe Provinsi do
before { @prov = Provinsi.new(provinsi: "Aceh") }

subject{ @prov }
  it { should respond_to(:provinsi) }

  it { should have_many(:subscribers) }
  it { should have_many(:kotas) }

  describe "should be valid" do
  	it { should be_valid }
  end

  describe "When provinsi is blank" do
    before { @prov.provinsi = " " } 
    it { should_not be_valid }
  end

  describe "provinsi must be unique" do
    before do
      @provinsi_dup = @prov.dup
      @provinsi_dup.save
    end
    it { should_not be_valid }
  end

  describe "provinsi must be unique with case insensitive" do
    before do
      @provinsi_dup = Provinsi.new(provinsi: "aceh") 
      @provinsi_dup.save
    end
    it { should_not be_valid }
  end
end
