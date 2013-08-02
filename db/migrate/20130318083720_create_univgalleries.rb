class CreateUnivgalleries < ActiveRecord::Migration
  def change
    create_table :univgalleries do |t|
      t.text :caption
      t.text :description
      t.text :path

      t.timestamps
    end
  end
end