class CreateUnivbiayas < ActiveRecord::Migration
  def change
    create_table :univbiayas do |t|
      t.text :biaya
      t.string :nilai
      t.integer :univ_id

      t.string :created_by
      t.string :updated_by 
      
      t.timestamps
    end
  end
end