require 'spec_helper'

describe RangeBidangKerja do
   
  before { @rangebidangkerja = RangeBidangKerja.new(bidang: "Pertanian", bobot: "1") }

  subject{ @rangebidangkerja }

  it { should respond_to(:bidang) }

  describe "should valid" do
  	it { should be_valid }
  end

  describe "When range is blank" do
    before { @rangebidangkerja.bidang = "" }
    it { should_not be_valid }
  end

  describe "range must be unique" do
    before do
      @rangebidangkerja_dup = @rangebidangkerja.dup
      @rangebidangkerja_dup.save
    end
    it { should_not be_valid }
  end
end
