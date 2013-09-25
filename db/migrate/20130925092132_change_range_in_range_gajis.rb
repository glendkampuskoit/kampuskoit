class ChangeRangeInRangeGajis < ActiveRecord::Migration
  def up
  	rename_column :range_gajis, :range, :gaji
  end

  def down
  end
end
