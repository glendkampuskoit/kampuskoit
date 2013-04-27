class RatingController < ApplicationController
	def index
		@jenis_pts = JenisPt.all
		@provinsis = Provinsi.all
		@univratings = Univ.all
	end
end
