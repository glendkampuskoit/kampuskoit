require 'spec_helper'

describe RangeProfesi do
  before { @range_profesi = RangeProfesi.new(profesi: "S2 Informatika", bobot: "1") }

  subject{ @range_profesi }

  it { should respond_to(:profesi) }
  it { should respond_to(:bobot) }

  describe "should valid" do
  	it { should be_valid }
  end

  describe "When profesi is blank" do
    before { @range_profesi.profesi = "" }
    it { should_not be_valid }
  end

  describe "When bobot is blank" do
    before { @range_profesi.bobot = "" }
    it { should_not be_valid }
  end

  describe "profesi must be unique" do
    before do
      @range_profesi_dup = @range_profesi.dup
      @range_profesi_dup.save
    end
    it { should_not be_valid }
  end
end
