class CreateProdiPassingGrades < ActiveRecord::Migration
  def change
  	create_table :prodi_passing_grades do |t|
  		t.integer :tahun
  		t.float		:grades
  		t.string	:status
  		t.references :prodi

  		t.timestamps
  	end
  end
end