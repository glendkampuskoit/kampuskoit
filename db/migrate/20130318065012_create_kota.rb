class CreateKota < ActiveRecord::Migration
  def change
    create_table :kotas do |t|
      t.string :kota
      # foreign key
      t.integer :provinsi_id
      
      t.string :created_by
      t.string :updated_by
      t.timestamps

      # index
      t.index :provinsi_id
    end
  end
end