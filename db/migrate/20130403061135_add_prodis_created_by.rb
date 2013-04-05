class AddProdisCreatedBy < ActiveRecord::Migration
  def up
  	add_column :prodis, :created_by, :string
  	add_column :prodis, :updated_by, :string
  end

  def down
  	remove_column :prodis, :created_by
  	remove_column :prodis, :updated_by
  end
end
