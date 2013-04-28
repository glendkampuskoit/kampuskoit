class CreateUnivRating < ActiveRecord::Migration
  def up
  	create_table :univ_rating do |t|
      t.integer :univ_id
      t.integer :score
      t.timestamps
    end
  end

  def down
  end
end
