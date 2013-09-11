require 'spec_helper'

describe RangeWaktuTunggu do
  before { @rangewaktutunggu = RangeWaktuTunggu.new(waktu_tunggu: "3 Bulan", bobot: "1") }

  subject{ @rangewaktutunggu }

  it { should respond_to(:waktu_tunggu) }

  describe "should valid" do
  	it { should be_valid }
  end

  describe "When waktu tunggu is blank" do
    before { @rangewaktutunggu.waktu_tunggu = "" }
    it { should_not be_valid }
  end

  describe "range must be unique" do
    before do
      @rangewaktutunggu_dup = @rangewaktutunggu.dup
      @rangewaktutunggu_dup.save
    end
    it { should_not be_valid }
  end
end
