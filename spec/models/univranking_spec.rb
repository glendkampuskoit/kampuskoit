require 'spec_helper'

describe Univranking do
  before { @univranking = Univranking.new(univ: FactoryGirl.create(:univ), government: "100", college: "100", society: "100", status:"1") }

  subject{ @univranking }

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
    before { @univranking.government = "" }
    it { should_not be_valid }
  end

  describe "When nilai is blank" do
    before { @univranking.college = "" }
    it { should_not be_valid }
  end

  describe "When nilai is blank" do
    before { @univranking.society = "" }
    it { should_not be_valid }
  end

  describe "When nilai is blank" do
    before { @univranking.government = "character" }
    it { should_not be_valid }
  end

  describe "When nilai is blank" do
    before { @univranking.college = "character" }
    it { should_not be_valid }
  end

  describe "When nilai is blank" do
    before { @univranking.society = "character" }
    it { should_not be_valid }
  end

  describe "When univ is blank" do
    before { @univranking.univ = nil } 
    it { should_not be_valid }
  end

  describe "When status is blank" do
    before { @univranking.status = "" } 
    it { should_not be_valid }
  end
end
