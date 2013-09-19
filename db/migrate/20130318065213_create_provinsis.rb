class CreateProvinsis < ActiveRecord::Migration
  def change
    create_table :provinsis do |t|
      t.string :provinsi

      t.string :created_by
      t.string :updated_by 

      t.timestamps
    end
  end
end