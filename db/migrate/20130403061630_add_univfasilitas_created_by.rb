class AddUnivfasilitasCreatedBy < ActiveRecord::Migration
  def change
  	add_column :univfasilitases, :created_by, :string
  	add_column :univfasilitases, :updated_by, :string
  end
end