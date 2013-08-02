class AddUnivkerjasamasCreatedBy < ActiveRecord::Migration
  def change
  	add_column :univkerjasamas, :created_by, :string
  	add_column :univkerjasamas, :updated_by, :string
  end
end