class VisitorsController < ApplicationController
	def new
		@visitor = Visitor.new
		render 'visitors/new', layout: false
	end

	def create
		@visitor = Visitor.new(params[:visitor])
	  	if @visitor.save
	  		VisitorMailer.thanks(@visitor)
	  		flash[:success] = "Pendaftaran Sukses. Silakan mengecek email anda"
	  		redirect_to visit_path
	  	else
	  		flash[:error] = "Email tidak valid atau sudah terdaftar"
	  		redirect_to visit_path
	  	end
	end
end
