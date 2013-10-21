class CreateUnivreviews < ActiveRecord::Migration
  def change
    create_table :univreviews do |t|
      t.string :review
      t.integer :univ_id
      t.integer :subscriber_id
      t.float :fasilitas_point
      t.float :beasiswa_point
      t.float :relevansi_point

      t.timestamps
    end
  end
end
