require 'spec_helper'

describe RangeLevelKarir do
  before { @rangelevelkarir = RangeLevelKarir.new(level_karir: "Staf", bobot: "1") }

  subject{ @rangelevelkarir }

  it { should respond_to(:level_karir) }

  describe "should valid" do
  	it { should be_valid }
  end

  describe "When range is blank" do
    before { @rangelevelkarir.level_karir = "" }
    it { should_not be_valid }
  end

  describe "range must be unique" do
    before do
      @rangelevelkarir_dup = @rangelevelkarir.dup
      @rangelevelkarir_dup.save
    end
    it { should_not be_valid }
  end
end
