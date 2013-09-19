class CreateUnivkerjasamas < ActiveRecord::Migration
  def change
    create_table :univkerjasamas do |t|
      t.text :kerjasama
      t.integer :univ_id, :integer

  		t.string :created_by
      t.string :updated_by 
      t.timestamps

      t.index :univ_id
    end
  end
end