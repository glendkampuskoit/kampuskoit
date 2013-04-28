class CreateProdiRating < ActiveRecord::Migration
  def up
  	create_table :prodi_rating do |t|
      t.integer :prodi_id
      t.integer :score
      t.timestamps
    end
  end

  def down
  end
end
