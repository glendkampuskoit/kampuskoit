class CreateUnivrankings < ActiveRecord::Migration
  def change
    create_table :univrankings do |t|
      t.integer :univ_id
	    t.float :government
	  	t.float :college
	  	t.float :society
      t.string :status

      t.timestamps
    end
  end
end