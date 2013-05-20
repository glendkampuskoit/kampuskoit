class KotasController < ApplicationController
	load_and_authorize_resource
	layout "admin"
	
	def index
		#@kotas = Kota.all
		@kotas = Kota.paginate(:page => params[:page], :per_page => 30)
	end

	def new
		@kota = Kota.new
	end

	def create
		@kota = Kota.new(params[:kota])
		if @kota.save
      redirect_to kotas_path, notice: 'Kota was successfully created.' 
    else
    	render action: "new"
    end	
	end

	def edit
		@kota = Kota.find(params[:id])		
	end

	def update
		@kota = Kota.find(params[:id])
    if @kota.update_attributes(params[:kota])
      redirect_to kotas_path, notice: 'Kota was successfully updated.' 
    else
      render action: "edit"
    end
	end

	def destroy
    @kota = JenjangProdi.find(params[:id])
    @kota.destroy
    redirect_to kotas_path
  end

  # index is for visitors searching, list is for admin panel
  def list
  end
end
