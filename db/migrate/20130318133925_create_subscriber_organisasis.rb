class CreateSubscriberOrganisasis < ActiveRecord::Migration
  def change
    create_table :subscriber_organisasis do |t|
      t.string :nama_organisasi
      t.string :jabatan
      t.string :tingkat
      t.string :periode
      t.text :path_sertifikat

      t.integer, :subscriber_id
      t.index, :subscriber_id

      t.timestamps
    end
  end
end