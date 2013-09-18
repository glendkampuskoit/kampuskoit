class CreateUnivkerjasamas < ActiveRecord::Migration
  def change
    create_table :univkerjasamas do |t|
      t.text :kerjasama
      t.integer :univ_id, :integer
  		t.index :univ_id

      t.timestamps
    end
  end
end