class AddUnivfasilitasCreatedBy < ActiveRecord::Migration
  def up
  	add_column :univfasilitas, :created_by, :string
  	add_column :univfasilitas, :updated_by, :string
  end

  def down
  	remove_column :univfasilitas, :created_by
  	remove_column :univfasilitas, :updated_by
  end
end
