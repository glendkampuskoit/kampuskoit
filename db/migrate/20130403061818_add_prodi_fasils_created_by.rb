class AddProdiFasilsCreatedBy < ActiveRecord::Migration
  def change
  	add_column :prodi_fasils, :created_by, :string
  	add_column :prodi_fasils, :updated_by, :string
  end
end