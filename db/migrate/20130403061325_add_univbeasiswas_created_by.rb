class AddUnivbeasiswasCreatedBy < ActiveRecord::Migration
  def up
  	add_column :univbeasiswas, :created_by, :string
  	add_column :univbeasiswas, :updated_by, :string
  end

  def down
  	remove_column :univbeasiswas, :created_by
  	remove_column :univbeasiswas, :updated_by
  end
end
