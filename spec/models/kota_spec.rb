require 'spec_helper'

describe Kota do
  before { @city = Kota.new(kota: "NANGGROE ACEH DARUSSALAM") }

  subject{ @city }
  it { should respond_to(:kota) }
  
  it { should have_many(:univs) }
  it { should belong_to(:provinsi) }

  describe "When kota is blank" do
    before { @city.kota = " " } 
    it { should_not be_valid }
  end
end
