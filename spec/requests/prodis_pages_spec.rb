require 'spec_helper'

describe "Prodi Page" do

  let(:kota) { FactoryGirl.create(:kota) }
  let(:univ) { FactoryGirl.create(:univ) }
  let(:jenjang_prodi) { FactoryGirl.create(:jenjang_prodi) }

  let(:submit) { "Save" }
  
  before do
    kota
    univ
    jenjang_prodi
    visit new_univ_prodi_path(univ)
  end

  it "Index page should have right title Tambah Jurusan" do
    page.should have_selector('title', :text => "Tambah Jurusan")
  end

  # admin only
  describe "go to univ list on admin panel" do
    before { visit prodis_list_path }
    it "should have title List Jurusan" do
      page.should have_selector('title', :text => "List Jurusan")
    end     
  end

  describe "fill with valid data" do
    before do
      fill_in "prodi_nama_prodi", with: "Sistem Informasi"
      fill_in "prodi_tahun_berdiri", with: "1980"
      fill_in "prodi_fakultas", with: "Teknologi Informasi"
      fill_in "prodi_alamat", with: "Sukolilo Indah Kampus ITS"
      fill_in "prodi_email", with: "si@its.ac.id"
      fill_in "prodi_telepon", with: "089977876"
      fill_in "prodi_fax", with: "089977876"
      fill_in "prodi_website", with: "http://si.its.ac.id"
      fill_in "prodi_jumlah_mahasiswa", with: "5000"
      fill_in "prodi_bidang_studi", with: "Botani; Zoologi; Mikrobiologi; Ekologi"
      fill_in "prodi_kompetensi", with: "Bisa copas code"
      fill_in "prodi_total_dosen_prof", with: "80"
      fill_in "prodi_total_dosen_master", with: "800"
      fill_in "prodi_total_dosen_sarjana", with: "8000"
      select(kota.kota, :from => "prodi_kota_id")
      select(univ.nama_pt, :from => "prodi_univ_id")
      select(jenjang_prodi.jenjang, :from => "prodi_jenjang_prodi_id")

    end

    it "should create a prodi" do
      expect { click_button submit }.to change(Prodi, :count)
    end
  end
end



