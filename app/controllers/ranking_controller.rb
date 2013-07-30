class RankingController < ApplicationController
	def index
		@jenis_pts = JenisPt.all
		@provinsis = Provinsi.order("provinsi ASC")

		#@univrankings = Univranking.filter_by_params(params).paginate(:page => params[:page], :per_page => 20)
		#@univrankings = Univranking.where(:status => "1").order("score DESC").paginate(:page => params[:page], :per_page => 20)
		@univrankings = Univranking.where(:status => "1").order("score DESC")
		@title = "Peringkat Perguruan Tinggi"

		if params[:provinsi]
			@univs = Univ.joins(:kota).where("kotas.provinsi_id" => params[:provinsi])
			@univrankings = Univranking.where(["univ_id IN (?)", @univs])
			@title = "Peringkat Perguruan Tinggi - Provinsi #{Provinsi.find(params[:provinsi]).provinsi.titleize}"
		elsif params[:kategori]
			@univrankings = Univranking.joins(:univ).where("univs.jenis_pt_id" => params[:kategori] ) 
			@title = "Peringkat Perguruan Tinggi - Kategori #{JenisPt.find(params[:kategori]).jenis.titleize}"
		end
	end

	def list
	  	#if params[:keyword].present?
    	#  @rankings = Univranking.joins(:univ).where(nama_pt LIKE "%#{params[:ranking]}%", {ranking: params[#:keyword]}).paginate(:page => params[:page], :per_page => 10)
    	#else
		#@rankings = Univranking.paginate(:page=> params[:page], :per_page=> 50)
		#end

		if params[:keyword]
			@univs = Univ.where("nama_pt LIKE '%#{params[:keyword]}%'")
			@univrankings = Univranking.where(["univ_id IN (?)", @univs]).order('score DESC').paginate(:page => params[:page], :per_page => 25) 
		else
			@univrankings = Univranking.paginate(:page=> params[:page], :per_page=> 25).order('score DESC')
		end

		render :layout => "admin"
	end
end
