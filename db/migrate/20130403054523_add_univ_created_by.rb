class AddUnivCreatedBy < ActiveRecord::Migration
  def change
  	add_column :univs, :created_by, :string
  	add_column :univs, :updated_by, :string
  end
end