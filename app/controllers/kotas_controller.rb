class KotasController < ApplicationController
	load_and_authorize_resource :only => [:new, :create, :edit, :update, :destroy, :list] if Rails.env.development? || Rails.env.production?
	layout "admin"
	
	def index
		@kotas = Kota.all
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

  def stream
    kotas = Kota.where('kota LIKE ?', "%#{params[:query]}%")

    @kota_data = Array.new

    @kota_data = kotas.map do |kota|
      { value: kota.kota, data: kota.id }
    end

    stream = { query: "Unit", suggestions: @kota_data }

    respond_to do |format|
      format.json { render json: stream.to_json }
    end
  end
end
