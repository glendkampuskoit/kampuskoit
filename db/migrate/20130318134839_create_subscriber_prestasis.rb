class CreateSubscriberPrestasis < ActiveRecord::Migration
  def change
    create_table :subscriber_prestasis do |t|
      t.string :nama_lomba
      t.string :peringkat
      t.text :tempat
      t.integer :tahun
      t.text :path_sertifikat
      t.integer :subscriber_id
      

      t.string :created_by
      t.string :updated_by 

      t.timestamps      
    end
    add_index :subscriber_prestasis, :subscriber_id
  end
end