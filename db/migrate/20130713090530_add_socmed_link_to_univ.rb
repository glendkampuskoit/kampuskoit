class AddSocmedLinkToUniv < ActiveRecord::Migration
  def change
  	add_column :univs, :facebook, :string
  	add_column :univs, :twitter, :string
  	add_column :univs, :youtube, :string
  end
end