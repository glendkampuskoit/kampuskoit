class CreateSubscriberOrganisasis < ActiveRecord::Migration
  def change
    create_table :subscriber_organisasis do |t|
      t.string :nama_organisasi
      t.string :jabatan
      t.string :tingkat
      t.string :periode
      t.text :path_sertifikat

      t.integer :subscriber_id
      
      t.string :created_by
      t.string :updated_by 

      t.timestamps
    end
    add_index :subscriber_organisasis, :subscriber_id
  end
end