class AddUnivCreatedBy < ActiveRecord::Migration
  def up
  	add_column :univs, :created_by, :string
  	add_column :univs, :updated_by, :string
  	add_column :univs, :profile_naration, :string
  end

  def down
  	remove_column :univs, :created_by
  	remove_column :univs, :updated_by
  end
end
