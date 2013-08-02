class CreateUnivbiayas < ActiveRecord::Migration
  def change
    create_table :univbiayas do |t|
      t.text :biaya
      t.string :nilai

      t.timestamps
    end
  end
end