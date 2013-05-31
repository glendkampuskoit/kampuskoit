class AddLogoToProdis < ActiveRecord::Migration
  def change
    add_column :prodis, :logo, :string

  end
end
