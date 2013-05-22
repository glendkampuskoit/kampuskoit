require 'spec_helper'

describe SurveyAlumni do
  
  before { @survey_alumni = SurveyAlumni.new(subscriber: FactoryGirl.create(:subscriber), score: 500) }

  subject { @survey_alumni }

  it { should respond_to(:subscriber) }
  it { should respond_to(:score) }
  it { should belong_to(:subscriber) }

  it { should be_valid }

  describe "when subscriber is blank" do
  	before { @survey_alumni.subscriber = nil }
		it { should_not be_valid }  	
  end

  describe "when score is blank" do
  	before { @survey_alumni.score = "" }
		it { should_not be_valid }  	
  end
end
