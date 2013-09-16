require 'spec_helper'

describe RangeWaktuTunggu do
  before { @range_waktu_tunggu = RangeWaktuTunggu.new(waktu_tunggu: "3 Bulan", bobot: "1") }

  subject{ @range_waktu_tunggu }

  it { should respond_to(:waktu_tunggu) }
  it { should respond_to(:bobot) }

  describe "should valid" do
  	it { should be_valid }
  end

  describe "When waktu tunggu is blank" do
    before { @range_waktu_tunggu.waktu_tunggu = "" }
    it { should_not be_valid }
  end

  describe "When bobot is blank" do
    before { @range_waktu_tunggu.bobot = "" }
    it { should_not be_valid }
  end

  describe "waktu tunggu must be unique" do
    before do
      @range_waktu_tunggu_dup = @range_waktu_tunggu.dup
      @range_waktu_tunggu_dup.save
    end
    it { should_not be_valid }
  end
end
