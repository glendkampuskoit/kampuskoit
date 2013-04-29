require 'spec_helper'

describe Univrating do
  before { @univrating = Univrating.new(univ: FactoryGirl.create(:univ), nilai: "100", status:"1") }

  subject{ @univrating }

  it { should respond_to(:univ) }
  it { should respond_to(:nilai) }
  it { should respond_to(:status) }

  it { should belong_to(:univ) }

  describe "should be valid" do
    it { should be_valid }
  end

  describe "When nilai is blank" do
    before { @univrating.nilai = " " }
    it { should_not be_valid }
  end

  describe "When univ is blank" do
    before { @univrating.univ = nil } 
    it { should_not be_valid }
  end

  describe "When status is blank" do
    before { @univrating.status = "" } 
    it { should_not be_valid }
  end
end
