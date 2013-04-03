class CreateUnivfasilitas < ActiveRecord::Migration
  def change
    create_table :univfasilitases do |t|
      t.text :fasilitas

      t.timestamps
    end
  end
end
