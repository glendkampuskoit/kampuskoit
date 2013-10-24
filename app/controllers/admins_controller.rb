class AdminsController < ApplicationController
	load_and_authorize_resource if Rails.env.development? || Rails.env.production?
	
	layout 'admin'

	def index
		@admins = Admin.paginate(:page => params[:page], :per_page => 30)
	end

	def new
		@admin = Admin.new
	end

	def create
		@admin = Admin.new(params[:admin])
    if @admin.save
  		redirect_to admins_path, notice: 'Admin was successfully added.' 
  	else
  		render 'new'
  	end		
	end

	def edit
		@admin = Admin.find(params[:id])
	end

	def update
		@admin = Admin.find(params[:id])
    if @admin.update_attributes(params[:admin])
      redirect_to admins_path, notice: 'Admin was successfully updated.' 
    else
      render action: "edit"
    end
	end

	def destroy
		@admin = Admin.find(params[:id])
    @admin.destroy
    redirect_to admins_path		
	end
end
