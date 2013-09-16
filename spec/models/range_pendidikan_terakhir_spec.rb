require 'spec_helper'

describe RangePendidikanTerakhir do
    before { @range_pendidikan_terakhir = RangePendidikanTerakhir.new(pendidikan: "S2 Informatika", bobot: "1") }

  subject{ @range_pendidikan_terakhir }

  it { should respond_to(:pendidikan) }
  it { should respond_to(:bobot) }

  describe "should valid" do
  	it { should be_valid }
  end

  describe "When pendidikan is blank" do
    before { @range_pendidikan_terakhir.pendidikan = "" }
    it { should_not be_valid }
  end

  describe "When bobot is blank" do
    before { @range_pendidikan_terakhir.bobot = "" }
    it { should_not be_valid }
  end

  describe "pendidikan must be unique" do
    before do
      @range_pendidikan_terakhir_dup = @range_pendidikan_terakhir.dup
      @range_pendidikan_terakhir_dup.save
    end
    it { should_not be_valid }
  end
end
