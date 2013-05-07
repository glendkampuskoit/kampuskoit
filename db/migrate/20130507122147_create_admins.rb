class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :nama
      t.string :email
      t.string :password_digest, null: true
      t.string :remember_token

      t.timestamps
    end
  end
end
