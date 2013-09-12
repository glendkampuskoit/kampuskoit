require 'spec_helper'

describe RangePendidikanTerakhir do
    before { @rangependidikanterakhir = RangePendidikanTerakhir.new(pendidikan: "S2 Informatika", bobot: "1") }

  subject{ @rangependidikanterakhir }

  it { should respond_to(:pendidikan) }

  describe "should valid" do
  	it { should be_valid }
  end

  describe "When range is blank" do
    before { @rangependidikanterakhir.pendidikan = "" }
    it { should_not be_valid }
  end

  describe "range must be unique" do
    before do
      @rangependidikanterakhir_dup = @rangependidikanterakhir.dup
      @rangependidikanterakhir_dup.save
    end
    it { should_not be_valid }
  end
end