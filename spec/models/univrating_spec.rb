require 'spec_helper'

describe Univrating do
  before { @univrating = Univrating.new(univ: FactoryGirl.create(:univ), government: "100", college: "100", society: "100", status:"1") }

  subject{ @univrating }

  it { should respond_to(:univ) }
  it { should respond_to(:government) }
  it { should respond_to(:college) }
  it { should respond_to(:society) }
  it { should respond_to(:status) }

  it { should belong_to(:univ) }

  describe "should be valid" do
    it { should be_valid }
  end

  describe "When nilai is blank" do
    before { @univrating.government = "" }
    it { should_not be_valid }
  end

  describe "When nilai is blank" do
    before { @univrating.college = "" }
    it { should_not be_valid }
  end

  describe "When nilai is blank" do
    before { @univrating.society = "" }
    it { should_not be_valid }
  end

  describe "When nilai is blank" do
    before { @univrating.government = "character" }
    it { should_not be_valid }
  end

  describe "When nilai is blank" do
    before { @univrating.college = "character" }
    it { should_not be_valid }
  end

  describe "When nilai is blank" do
    before { @univrating.society = "character" }
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
