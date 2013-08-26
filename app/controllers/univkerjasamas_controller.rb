class UnivkerjasamasController < ApplicationController
	def index
		@univ = Univ.find(params[:univ_id])
		@univkerjasamas = Univkerjasama.where(univ_id: @univ)
		@univkerjasama = Univkerjasama.new
		@url = univ_univkerjasamas_path(@univ)
	end

	def create
		@univkerjasama_save = Univkerjasama.new(params[:univkerjasama])
		@univ = Univ.find(params[:univ_id])
		@univkerjasamas = Univkerjasama.where(univ_id: @univ)
		@univkerjasama = Univkerjasama.new

		if @univkerjasama_save.save
      redirect_to univ_univkerjasamas_path(@univ, @univkerjasama_save)
    else
    	render action: "index"
    end	
	end

	def edit
		@univ = Univ.find(params[:univ_id])
		@univkerjasamas = Univkerjasama.where(univ_id: @univ)
		@univkerjasama = Univkerjasama.find(params[:id])
		@url = univ_univkerjasama_path(@univ, @univkerjasama)
		render action: "index"
	end

	def update
		@univ = Univ.find(params[:univ_id])
		@univkerjasama_save = Univkerjasama.find(params[:id])
    @univkerjasamas = Univkerjasama.where(univ_id: @univ)

    if @univkerjasama_save.update_attributes(params[:univkerjasama])
      @univkerjasama = Univkerjasama.new
      redirect_to univ_univkerjasamas_path(@univ), notice: "Kerjasama Perguruan Tinggi Berhasil diupdate"
    else
    	@univkerjasama = @univkerjasama_save
    	render action: "index"
    end
	end

	def destroy
    @univkerjasama = Univkerjasama.find(params[:id])
    @univkerjasama.destroy
    redirect_to univ_univkerjasamas(@univkerjasama.univ, @univkerjasama), notice: 'Kerjasama Perguruan Tinggi berhasil dihapus.' 
  end
end
