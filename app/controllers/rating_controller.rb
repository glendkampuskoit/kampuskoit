class RatingController < ApplicationController
	def index
		@jenis_pts = JenisPt.all
		@provinsis = Provinsi.order("provinsi ASC")

		#@univratings = Univrating.filter_by_params(params).paginate(:page => params[:page], :per_page => 20)
		#@univratings = Univrating.where(:status => "1").order("score DESC").paginate(:page => params[:page], :per_page => 20)
		@univratings = Univrating.where(:status => "1").order("score DESC")
	end
end
