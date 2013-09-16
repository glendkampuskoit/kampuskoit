require 'spec_helper'

describe RangeBidangKerja do
   
  before { @range_bidang_kerja = RangeBidangKerja.new(bidang: "Pertanian", bobot: "1") }

  subject{ @range_bidang_kerja }

  it { should respond_to(:bidang) }
  it { should respond_to(:bobot) }

  describe "should valid" do
  	it { should be_valid }
  end

  describe "When bidang is blank" do
    before { @range_bidang_kerja.bidang = "" }
    it { should_not be_valid }
  end

  describe "When bobot is blank" do
    before { @range_bidang_kerja.bobot = "" }
    it { should_not be_valid }
  end

  describe "bidang must be unique" do
    before do
      @range_bidang_kerja_dup = @range_bidang_kerja.dup
      @range_bidang_kerja_dup.save
    end
    it { should_not be_valid }
  end
end