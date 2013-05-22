class SurveyAlumni < ActiveRecord::Base
  belongs_to :subscriber

  validates :subscriber, presence: true
  validates :score, presence: true
end
