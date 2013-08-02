class ChangeUnivratingToUnivranking < ActiveRecord::Migration
  def change
  	rename_table :univratings, :univrankings
  end
end