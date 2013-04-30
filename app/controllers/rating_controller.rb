class RatingController < ApplicationController
	def index
		@jenis_pts = JenisPt.all
		@provinsis = Provinsi.all
		@univratings = Univrating.filter_by_params(params)
	end
end
