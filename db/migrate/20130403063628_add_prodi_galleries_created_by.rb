class AddProdiGalleriesCreatedBy < ActiveRecord::Migration
  def change
  	add_column :prodi_galleries, :created_by, :string
  	add_column :prodi_galleries, :updated_by, :string
  end
end