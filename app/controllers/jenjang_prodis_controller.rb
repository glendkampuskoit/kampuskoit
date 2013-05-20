class JenjangProdisController < ApplicationController
  load_and_authorize_resource
  layout 'admin'

  def index
    @jenjang_prodis = JenjangProdi.all
  end

  def new
    @jenjang_prodi = JenjangProdi.new
  end

  def create
    @jenjang_prodi = JenjangProdi.new(params[:jenjang_prodi])
    if @jenjang_prodi.save
      redirect_to jenjang_prodis_path, notice: 'Jenjang Jurusan was successfully created.' 
    else
      render action: "new"
    end 
  end

  def edit
    @jenjang_prodi = JenjangProdi.find(params[:id])
  end

  def update
    @jenjang_prodi = JenjangProdi.find(params[:id])
    if @jenjang_prodi.update_attributes(params[:jenjang_prodi])
      redirect_to jenjang_prodis_path, notice: 'Jenjang Jurusan was successfully updated.' 
    else
      render action: "edit"
    end
  end

  def destroy
    @jenjang_prodi = JenjangProdi.find(params[:id])
    @jenjang_prodi.destroy
    redirect_to jenjang_prodis_path
  end
end
