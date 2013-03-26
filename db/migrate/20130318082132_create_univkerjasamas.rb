class CreateUnivkerjasamas < ActiveRecord::Migration
  def change
    create_table :univkerjasamas do |t|
      t.text :kerjasama

      t.timestamps
    end
  end
end
