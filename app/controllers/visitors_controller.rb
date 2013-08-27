class VisitorsController < ApplicationController

	def index
		@visitors = Visitor.all
		render :layout => "admin"
	end

	def create
		@visitor = Visitor.new(params[:visitor])
	  	if @visitor.save
	  		VisitorMailer.thanks(@visitor)
	  		flash[:newsletter_success] = "Terima kasih sudah mendaftarkan email anda. Silakan cek email anda untuk melakukan konfirmasi"
	  		redirect_to home_path
	  	else
	  		flash[:newsletter_error] = "Email tidak valid atau sudah terdaftar"
	  		redirect_to home_path
	  	end
	end
	
	def destroy
		@visitor = Visitor.find(params[:id])
		@visitor.destroy
		redirect_to visitors_list_path
	end
end