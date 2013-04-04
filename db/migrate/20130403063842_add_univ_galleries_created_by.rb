class AddUnivGalleriesCreatedBy < ActiveRecord::Migration
  def up
  	add_column :univgalleries, :created_by, :string
  	add_column :univgalleries, :updated_by, :string
  end

  def down
  	remove_column :univgalleries, :created_by
  	remove_column :univgalleries, :updated_by
  end
end
