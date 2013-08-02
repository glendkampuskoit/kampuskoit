class AddSocmedLinkToProdi < ActiveRecord::Migration
  def change
  	add_column :prodis, :facebook, :string
  	add_column :prodis, :twitter, :string
  	add_column :prodis, :youtube, :string
  end
end