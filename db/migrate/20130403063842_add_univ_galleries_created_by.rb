class AddUnivGalleriesCreatedBy < ActiveRecord::Migration
  def change
  	add_column :univgalleries, :created_by, :string
  	add_column :univgalleries, :updated_by, :string
  end
end