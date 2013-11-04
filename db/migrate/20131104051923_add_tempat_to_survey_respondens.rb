class AddTempatToSurveyRespondens < ActiveRecord::Migration
  def change
  	add_column :survey_respondens, :range_tempat_tinggal_id, :string
  	add_column :survey_respondens, :range_tempat_kerja_id, :string  	  	
  end
end
