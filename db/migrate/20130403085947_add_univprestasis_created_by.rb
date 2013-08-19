class AddUnivprestasisCreatedBy < ActiveRecord::Migration
  def change
  	add_column :univprestasis, :created_by, :string
  	add_column :univprestasis, :updated_by, :string
  end
end