class CreateProdiBiayas < ActiveRecord::Migration
  def change
    create_table :prodi_biayas do |t|
      t.text :biaya
      t.string :nilai

      t.timestamps
    end
  end
end