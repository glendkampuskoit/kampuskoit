class AddColumnUser < ActiveRecord::Migration
  def change
  	add_column :users, :tempat_lahir, :string
		add_column :users, :tanggal_lahir, :date
		add_column :users, :agama, :string
		add_column :users, :jenis_kelamin, :string
		add_column :users, :status_pernikahan, :string
		add_column :users, :alamat, :text
		add_column :users, :kodepos, :string
		add_column :users, :telepon, :string
		add_column :users, :no_hp, :string
  end
end