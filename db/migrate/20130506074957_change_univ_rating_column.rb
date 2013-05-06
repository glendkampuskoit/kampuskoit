class ChangeUnivRatingColumn < ActiveRecord::Migration
  def up
  	change_column :univratings, :government, :float
  	change_column :univratings, :college, :float
  	change_column :univratings, :society, :float
  	add_column :univratings, :score, :float
  end

  def down
  	remove_column :univratings, :score, :float
  end
end
