class AddImageLogoToUnivs < ActiveRecord::Migration
  def change
    add_column :univs, :image, :string
  end
end