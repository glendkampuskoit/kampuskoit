require 'spec_helper'

describe Univbiaya do

  before { @univbiaya = Univbiaya.new(biaya: "Uang Pangkal Gedung", nilai:"1.000.0000") }

  subject{ @univbiaya }
  it { should respond_to(:biaya) }
  it { should respond_to(:nilai) }

  it { should belong_to(:univ) }

  describe "When biaya is blank" do
    before { @univbiaya.biaya = " " } 
    it { should_not be_valid }
  end

  describe "When nilai is blank" do
    before { @univbiaya.biaya = " " }
    it { should_not be_valid }
  end
end
