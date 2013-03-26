class CreateProvinsis < ActiveRecord::Migration
  def change
    create_table :provinsis do |t|
      t.string :provinsi

      t.timestamps
    end
  end
end
