require 'spec_helper'

describe Feedback do
  before { @feedback = Feedback.new(from: "Agus", feed: "Bagus Sekali") }

  subject{ @feedback }

  it { should be_valid }

  it { should respond_to(:from) }  
  it { should respond_to(:feed) }  
  
  describe "When from is blank" do
    before { @feedback.from = "" } 
    it { should_not be_valid }
  end

  describe "When feed is blank" do
    before { @feedback.feed = "" } 
    it { should_not be_valid }
  end
end
