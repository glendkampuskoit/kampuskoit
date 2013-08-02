class AddUnivbeasiswasCreatedBy < ActiveRecord::Migration
  def change
  	add_column :univbeasiswas, :created_by, :string
  	add_column :univbeasiswas, :updated_by, :string
  end
end