class RenameUnivImageToLogo < ActiveRecord::Migration
  def up
  	rename_column :univs, :image, :logo
  end
end