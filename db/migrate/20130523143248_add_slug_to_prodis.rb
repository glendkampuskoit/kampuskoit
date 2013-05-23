class AddSlugToProdis < ActiveRecord::Migration
  def change
  	add_column :prodis, :slug, :string
  	add_index :prodis, :slug #, :unique => true
  end
end
