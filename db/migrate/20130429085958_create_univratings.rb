class CreateUnivratings < ActiveRecord::Migration
  def change
    create_table :univratings do |t|
      t.integer :univ_id
      t.integer :nilai
      t.string :status

      t.timestamps
    end
  end
end