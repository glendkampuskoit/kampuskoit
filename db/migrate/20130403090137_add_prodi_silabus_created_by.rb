class AddProdiSilabusCreatedBy < ActiveRecord::Migration
  def change
  	add_column :prodi_silabuses, :created_by, :string
  	add_column :prodi_silabuses, :updated_by, :string
  end
end