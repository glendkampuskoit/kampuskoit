class RatingController < ApplicationController
	def index
		@jenis_pts = JenisPt.all
		@provinsis = Provinsi.all

		#@univratings = Univrating.filter_by_params(params).paginate(:page => params[:page], :per_page => 20)
		@univratings = Univrating.paginate(:page => params[:page], :per_page => 20)
	end
end
