class CreateUnivkerjasamas < ActiveRecord::Migration
  def change
    create_table :univkerjasamas do |t|
      t.text :kerjasama
      t.integer :univ_id, :integer

  		t.string :created_by
      t.string :updated_by 
      t.timestamps
    end
    add_index :univkerjasamas, :univ_id
  end
end