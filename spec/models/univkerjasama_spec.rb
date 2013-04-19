require 'spec_helper'

describe Univkerjasama do
  before { @univkerjasama = Univkerjasama.new(univ: FactoryGirl.create(:univ), kerjasama: "Kerjasama PLN") }

  subject{ @univkerjasama }
  it { should respond_to(:kerjasama) }
  it { should respond_to(:univ) }

  it { should belong_to(:univ) }

  describe "should be valid" do
    it { should be_valid }
  end

  describe "When kerjasama is blank" do
    before { @univkerjasama.kerjasama = " " }
    it { should_not be_valid }
  end
end
