class CreateKota < ActiveRecord::Migration
  def change
    create_table :kotas do |t|
      t.string :kota

      t.timestamps
    end
  end
end