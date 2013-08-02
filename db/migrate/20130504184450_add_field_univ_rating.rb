class AddFieldUnivRating < ActiveRecord::Migration
  def change
  	remove_column :univratings, :nilai
  	add_column :univratings, :government, :integer
  	add_column :univratings, :college, :integer
  	add_column :univratings, :society, :integer
  end
end