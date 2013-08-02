class CreateUnivbeasiswas < ActiveRecord::Migration
  def change
    create_table :univbeasiswas do |t|
      t.string :nama_beasiswa
      t.string :instansi
      t.string :periode
      t.string :nilai

      t.timestamps
    end
  end
end