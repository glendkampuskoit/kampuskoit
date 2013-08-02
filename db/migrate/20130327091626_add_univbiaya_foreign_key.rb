class AddUnivbiayaForeignKey < ActiveRecord::Migration
  def change
  	add_column :univbiayas, :univ_id, :integer
  end
end