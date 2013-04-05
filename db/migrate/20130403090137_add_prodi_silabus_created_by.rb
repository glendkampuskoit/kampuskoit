class AddProdiSilabusCreatedBy < ActiveRecord::Migration
  def up
  	add_column :prodi_silabuses, :created_by, :string
  	add_column :prodi_silabuses, :updated_by, :string
  end

  def down
  	remove_column :prodi_silabuses, :created_by
  	remove_column :prodi_silabuses, :updated_by
  end
end
