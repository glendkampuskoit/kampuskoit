class RatingController < ApplicationController
	def index
		@jenis_pts = JenisPt.all
		@provinsis = Provinsi.all
		@univratings = Univrating.where("status = '1'")
	end
end
