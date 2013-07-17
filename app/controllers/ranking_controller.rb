class RankingController < ApplicationController
	def index
		@jenis_pts = JenisPt.all
		@provinsis = Provinsi.order("provinsi ASC")

		#@univrankings = Univranking.filter_by_params(params).paginate(:page => params[:page], :per_page => 20)
		#@univrankings = Univranking.where(:status => "1").order("score DESC").paginate(:page => params[:page], :per_page => 20)
		@univratings = Univranking.where(:status => "1").order("score DESC")
	end
end
