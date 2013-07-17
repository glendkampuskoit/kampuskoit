class ChangeUnivratingToUnivranking < ActiveRecord::Migration
  def up
  	rename_table :univratings, :univrankings
  end

  def down
  end
end
