require 'spec_helper'

describe Univreview do
  before { @univreview = Univreview.new(review: "Bagus sekali universitasnya", univ: FactoryGirl.create(:univ), subscriber: FactoryGirl.create(:subscriber), beasiswa_point: 5.0, relevansi_point: 7.0, fasilitas_point: 4.0 )
  @univreview.errors.full_messages
   }

  subject{ @univreview }

  it { should belong_to(:univ) }

  describe "should valid" do
  	it { should be_valid }    
  end

  describe "When review is blank" do
    before { @univreview.review = "" } 
    it { should_not be_valid }
  end

  describe "When univ_id is blank" do
    before { @univreview.univ_id = "" } 
    it { should_not be_valid }
  end

  describe "When subscriber_id is blank" do
    before { @univreview.subscriber_id = "" } 
    it { should_not be_valid }
  end

  describe "When fasilitas_point is blank" do
    before { @univreview.fasilitas_point = "" } 
    it { should_not be_valid }
  end

  describe "When beasiswa_point is blank" do
    before { @univreview.beasiswa_point = "" } 
    it { should_not be_valid }
  end

  describe "When relevansi_point is blank" do
    before { @univreview.relevansi_point = "" } 
    it { should_not be_valid }
  end
end