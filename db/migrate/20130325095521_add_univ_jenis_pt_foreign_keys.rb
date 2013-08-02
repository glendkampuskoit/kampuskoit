class AddUnivJenisPtForeignKeys < ActiveRecord::Migration
  def change
  	add_column :univs, :jenis_pt_id, :integer
  end
end