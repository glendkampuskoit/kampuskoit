class AddUnivbiayaForeignKey < ActiveRecord::Migration
  def up
  	add_column :univbiayas, :univ_id, :integer
  end

  def down
  end
end
