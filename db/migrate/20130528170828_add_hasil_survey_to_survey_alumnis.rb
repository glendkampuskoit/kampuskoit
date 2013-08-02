class AddHasilSurveyToSurveyAlumnis < ActiveRecord::Migration
  def change
  	add_column :survey_alumnis, :hasil, :text
  end
end