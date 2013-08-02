class AddSilabusToProdis < ActiveRecord::Migration
  def change
  	add_column :prodis, :silabus, :string
  end
end