require 'spec_helper'

describe RangeProfesi do
  before { @rangeprofesi = RangeProfesi.new(profesi: "S2 Informatika", bobot: "1") }

  subject{ @rangeprofesi }

  it { should respond_to(:profesi) }

  describe "should valid" do
  	it { should be_valid }
  end

  describe "When range is blank" do
    before { @rangeprofesi.profesi = "" }
    it { should_not be_valid }
  end

  describe "range must be unique" do
    before do
      @rangeprofesi_dup = @rangeprofesi.dup
      @rangeprofesi_dup.save
    end
    it { should_not be_valid }
  end
end
