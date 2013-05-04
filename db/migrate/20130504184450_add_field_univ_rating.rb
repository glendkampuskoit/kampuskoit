class AddFieldUnivRating < ActiveRecord::Migration
  def up
  	remove_column :univratings, :nilai
  	add_column :univratings, :government, :integer
  	add_column :univratings, :college, :integer
  	add_column :univratings, :society, :integer
  end

  def down
  	add_column :univratings, :nilai, :integer
  	remove_column :univratings, :government
  	remove_column :univratings, :college
  	remove_column :univratings, :society
  end
end
