class AdditionalFieldSurvey < ActiveRecord::Migration
  def change
  	add_column :survey_respondens, :prodi_id, :integer
  	add_column :survey_respondens, :usia, :integer
  	add_column :survey_respondens, :tahun_lulus, :integer
  	add_column :survey_respondens, :jenis_kelamin, :integer
  	add_column :survey_respondens, :alamat, :string
  	add_column :survey_respondens, :sertifikasi_professional, :integer
    add_column :survey_respondens, :nama_sertifikat, :string
  end
end
