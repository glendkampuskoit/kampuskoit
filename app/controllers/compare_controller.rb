class CompareController < ApplicationController
	def index
		@prodi_1 = Prodi.find(1)
		@prodi_2 = Prodi.find(2)
		@akreditasi_1 = ProdiAkreditasi.where( { prodi_id: @prodi_1, status: "1" } ).first.present? ? ProdiAkreditasi.where( { prodi_id: @prodi_1, status: "1" } ).first : " - "
		@akreditasi_2 = ProdiAkreditasi.where( { prodi_id: @prodi_2, status: "1" } ).first.present? ? ProdiAkreditasi.where( { prodi_id: @prodi_2, status: "1" } ).first : " - "

		@grade_1 = ProdiPassingGrade.where( { prodi_id: @prodi_1, status: "1" } ).first.present? ? ProdiPassingGrade.where( { prodi_id: @prodi_1, status: "1" } ).first : " - "
		@grade_2 = ProdiPassingGrade.where( { prodi_id: @prodi_2, status: "1" } ).first.present? ? ProdiPassingGrade.where( { prodi_id: @prodi_2, status: "1" } ).first : " - "
	end
end
