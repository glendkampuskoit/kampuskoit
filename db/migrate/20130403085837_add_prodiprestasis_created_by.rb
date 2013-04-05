class AddProdiprestasisCreatedBy < ActiveRecord::Migration
  def up
  	add_column :prodi_prestasis, :created_by, :string
  	add_column :prodi_prestasis, :updated_by, :string
  end

  def down
  	remove_column :prodi_prestasis, :created_by
  	remove_column :prodi_prestasis, :updated_by
  end
end
