class UnivreviewsController < ApplicationController
	def new
		@univreview = Univreview.new
		@points = %w( 1 2 3 4 5 6 7 8 9 10 )
	end

	def create
		@univreview = Univreview.new(params[:univreview])
		if @univreview.save
			redirect_to univreviews_controller, :notice => "Terima Kasih telah mengisi survey. Silakan mengisi review dibawah ini"
		else
			render action: "new"
		end
	end
end
