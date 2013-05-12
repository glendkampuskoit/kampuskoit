class JenisPtsController < ApplicationController
	layout 'admin'
	
	def index
		@jenis_pts = JenisPt.all

	end

	def new
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end
end
