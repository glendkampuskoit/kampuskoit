class AddUnivbiayasCreatedBy < ActiveRecord::Migration
  def up
  	add_column :univbiayas, :created_by, :string
  	add_column :univbiayas, :updated_by, :string
  end

  def down
  	remove_column :univbiayas, :created_by
  	remove_column :univbiayas, :updated_by
  end
end
