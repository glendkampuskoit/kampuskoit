class AddUnivprestasisCreatedBy < ActiveRecord::Migration
  def up
  	add_column :univprestasis, :created_by, :string
  	add_column :univprestasis, :updated_by, :string
  end

  def down
  	remove_column :univprestasis, :created_by
  	remove_column :univprestasis, :updated_by
  end
end
