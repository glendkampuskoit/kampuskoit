class RenameUnivImageToLogo < ActiveRecord::Migration
  def up
  	rename_column :univs, :image, :logo
  end

  def down
  end
end
