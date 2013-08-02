class AddUnivIdToAdmins < ActiveRecord::Migration
  def change
  	add_column :admins, :univ_id, :integer
  end
end