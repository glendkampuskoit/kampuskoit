class AddUnivfasilitasCreatedBy < ActiveRecord::Migration
  def up
  	add_column :univfasilitases, :created_by, :string
  	add_column :univfasilitases, :updated_by, :string
  end

  def down
  	remove_column :univfasilitases, :created_by
  	remove_column :univfasilitases, :updated_by
  end
end
