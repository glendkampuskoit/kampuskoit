class CreateSurveyAlumnis < ActiveRecord::Migration
  def change
    create_table :survey_alumnis do |t|
      t.references :subscriber
      t.integer :score

      t.timestamps
    end
    add_index :survey_alumnis, :subscriber_id
  end
end
