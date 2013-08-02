class AddSlugToUnivs < ActiveRecord::Migration
  def change
  	add_column :univs, :slug, :string
  	add_index :univs, :slug, :unique => true
  end
end