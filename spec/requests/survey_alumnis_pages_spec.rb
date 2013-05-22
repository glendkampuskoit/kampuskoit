require 'spec_helper'

describe "Survey Alumni Page" do

  subject { page }

  describe "go to survey alumni page" do
    before { visit new_survey_alumni_path }
    
    it { should have_selector('title', text: "Survey Alumni") }
  end
end