class CreateKota < ActiveRecord::Migration
  def change
    create_table :kotas do |t|
      t.string :kota
      # foreign key
      add_column :kotas, :provinsi_id, :integer
      # index
  		add_index :kotas, :provinsi_id

      t.timestamps
    end
  end
end