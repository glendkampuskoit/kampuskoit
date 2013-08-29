class ErrorsController < ApplicationController

	layout "error"

	def show
		render action: request.path[1..-1]
	end
end
