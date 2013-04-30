class RatingController < ApplicationController
	def index
		@jenis_pts = JenisPt.all
		@provinsis = Provinsi.all

		if params[:page] 
			@univratings = Univrating.filter_by_params(params).paginate(:page => params[:page], :per_page => 10)
		else
			@univratings = Univrating.filter_by_params(params).paginate(:page => "1", :per_page => 10)
		end
	end
end
