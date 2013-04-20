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

  describe "univ and kerjasama must be unique with case insensitive" do
    before do
      @univkerjasama_dup = Univkerjasama.new(
        univ: @univkerjasama.univ, 
        kerjasama: "kerjasama pln")
      @univkerjasama_dup.save
    end
    it { should_not be_valid }
  end
end
