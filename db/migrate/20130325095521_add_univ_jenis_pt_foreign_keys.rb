class AddUnivJenisPtForeignKeys < ActiveRecord::Migration
  def up
  	add_column :univs, :jenis_pt_id, :integer
  end

  def down
  end
end
