class UnivreviewsController < ApplicationController
	def new
		@univreview = Univreview.new
		if params[:univ_id]
			@univ_id = params[:univ_id]
		else
			@univ_id = params[:univreview][:univ_id]
		end

		@points = %w( 10 9 8 7 6 5 4 3 2 1 )
	end

	def create
		@univreview = Univreview.new(params[:univreview])
		@points = %w( 1 2 3 4 5 6 7 8 9 10 )
		if @univreview.save
			redirect_to univ_path(params[:univreview][:univ_id]), :notice => "Data survey dan review sudah kami simpan. Terima Kasih telah berpartisipasi"
		else
			render action: "new"
		end
	end
end
