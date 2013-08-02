class AddProdisCreatedBy < ActiveRecord::Migration
  def change
  	add_column :prodis, :created_by, :string
  	add_column :prodis, :updated_by, :string
  end
end
