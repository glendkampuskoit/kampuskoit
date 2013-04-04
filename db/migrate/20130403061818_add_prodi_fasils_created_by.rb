class AddProdiFasilsCreatedBy < ActiveRecord::Migration
  def up
  	add_column :prodi_fasils, :created_by, :string
  	add_column :prodi_fasils, :updated_by, :string
  end

  def down
  	remove_column :prodi_fasils, :created_by
  	remove_column :prodi_fasils, :updated_by
  end
end
