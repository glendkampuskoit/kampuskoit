class Univranking < ActiveRecord::Base

	belongs_to :univ, :foreign_key => :univ_id

	validates :univ, presence: true
	validates :government, presence: true, :numericality => {:only_integer => true}
	validates :college, presence: true, :numericality => {:only_integer => true}
	validates :society, presence: true, :numericality => {:only_integer => true}
	validates :status, presence: true
=begin
	def self.filter_by_params(params)
		scoped = self.scoped
		scoped = scoped.joins(:univ).on(:univ_id.eq(univ[:univ_id])).joins(:kota).on(univ[:kota_id].eq(kota[:kota_id])).joins(:provinsi).on(kota[:provinsi_id].eq(provinsi[:provinsi_id])).where(provinsi[:provinsi_id].eq(params[:provinsi_id])) if params[:provinsi_id]
		scoped = scoped.joins(:univ).on(self[:univ_id].eq(univ[:univ_id])).joins(:jenis_pt).on(univ[:jenis_pt_id].eq(jenis_pt[:jenis_pt_id])).where(jenis_pt[:jenis_pt_id].eq(params[:jenis_pt_id])) if params[:jenis_pt_id]
		scoped
	end
=end
end