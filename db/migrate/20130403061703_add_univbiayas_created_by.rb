class AddUnivbiayasCreatedBy < ActiveRecord::Migration
  def change
  	add_column :univbiayas, :created_by, :string
  	add_column :univbiayas, :updated_by, :string
  end
end