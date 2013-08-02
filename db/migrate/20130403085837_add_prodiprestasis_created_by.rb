class AddProdiprestasisCreatedBy < ActiveRecord::Migration
  def change
  	add_column :prodi_prestasis, :created_by, :string
  	add_column :prodi_prestasis, :updated_by, :string
  end
end