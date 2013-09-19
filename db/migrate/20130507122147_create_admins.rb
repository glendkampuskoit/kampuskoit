class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :nama
      t.string :email
      t.string :password_digest, null: true
      t.string :remember_token
      t.string :role
      t.integer :univ_id

      t.timestamps
    end
  end
end