class CreateUnivbeasiswas < ActiveRecord::Migration
  def change
    create_table :univbeasiswas do |t|
      t.string :nama_beasiswa
      t.string :instansi
      t.string :periode
      t.string :nilai
      t.integer :univ_id
  		

      t.string :created_by
      t.string :updated_by 

      t.timestamps
      t.index :univ_id
    end
  end
end