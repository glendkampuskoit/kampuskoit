require 'spec_helper'

describe RangeLevelKarir do
  before { @range_level_karir = RangeLevelKarir.new(level_karir: "Staf", bobot: "1") }

  subject{ @range_level_karir }

  it { should respond_to(:level_karir) }
  it { should respond_to(:bobot) }

  describe "should valid" do
  	it { should be_valid }
  end

  describe "When level karir is blank" do
    before { @range_level_karir.level_karir = "" }
    it { should_not be_valid }
  end

  describe "When bobot is blank" do
    before { @range_level_karir.bobot = "" }
    it { should_not be_valid }
  end

  describe "level karir must be unique" do
    before do
      @range_level_karir_dup = @range_level_karir.dup
      @range_level_karir_dup.save
    end
    it { should_not be_valid }
  end
end
