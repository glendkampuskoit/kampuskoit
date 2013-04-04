class AddUnivkerjasamasCreatedBy < ActiveRecord::Migration
  def up
  	add_column :univkerjasamas, :created_by, :string
  	add_column :univkerjasamas, :updated_by, :string
  end

  def down
  	remove_column :univkerjasamas, :created_by
  	remove_column :univkerjasamas, :updated_by
  end
end
