require 'spec_helper'

describe Provinsi do
before { @prov = Provinsi.new(provinsi: "NANGGROE ACEH D.") }

subject{ @prov }
  it { should respond_to(:provinsi) }

  it { should have_many(:subscribers) }
  it { should have_many(:kotas) }

  describe "When provinsi is blank" do
    before { @prov.provinsi = " " } 
    it { should_not be_valid }
  end
end
