class VisitorsController < ApplicationController
	def create
		@visitor = Visitor.new(params[:visitor])
	  	if @visitor.save
	  		VisitorMailer.thanks(@visitor)
	  		flash[:success] = "Pendaftaran Sukses. Silakan mengecek email anda"
	  		redirect_to home_path
	  	else
	  		flash[:error] = "Email tidak valid atau sudah terdaftar"
	  		redirect_to home_path
	  	end
	end
end
