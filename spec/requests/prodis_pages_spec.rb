require 'spec_helper'

describe "Prodi Page" do

  let(:kota) { FactoryGirl.create(:kota) }
  let(:univ) { FactoryGirl.create(:univ) }
  let(:jenjang_prodi) { FactoryGirl.create(:jenjang_prodi) }
  let(:prodi_bidang) { FactoryGirl.create(:prodi_bidang)}

  let(:submit) { "Save" }
  
  before do
    kota
    univ
    jenjang_prodi
    prodi_bidang
    visit new_univ_prodi_path(univ)
  end

  it "Index page should have right title Tambah Program Studi" do
    page.should have_selector('title', :text => "Tambah Program Studi")
  end

  # admin only
  describe "go to univ list on admin panel" do
    before { visit prodis_list_path }
    it "should have title List Jurusan" do
      page.should have_selector('title', :text => "Data Program Studi")
    end     
  end

  describe "fill with valid data" do
    before do
      fill_in "nama_prodi", with: "Sistem Informasi"
      find(:xpath, "//input[@id='univ_id']").set univ.id #select(univ.nama_pt, :from => "univ")      
      fill_in "fakultas", with: "Teknologi Informasi"
      select(jenjang_prodi.jenjang, :from => "jenjang_prodi")
      fill_in "tahun_berdiri", with: "1980"
      fill_in "email", with: "si@its.ac.id"
      fill_in "website", with: "http://si.its.ac.id"
      fill_in "alamat", with: "Sukolilo Indah Kampus ITS"
      find(:xpath, "//input[@id='kota_id']").set kota.id #select(kota.kota, :from => "kota")
      find(:xpath, "//input[@id='prodi_bidang_id']").set prodi_bidang.id #select(prodi_bidang.nama_bidang, :from => "prodi_bidang")
      fill_in "telepon", with: "089977876"
      fill_in "fax", with: "089977876"
      fill_in "profil", with: "Jurusan terbaik"
      fill_in "jumlah_mahasiswa", with: "5000"
      fill_in "bidang_studi", with: "Botani; Zoologi; Mikrobiologi; Ekologi"
      fill_in "kompetensi", with: "Bisa copas code"
      fill_in "seleksi_masuk", with: "sogok"
      fill_in "total_dosen_prof", with: "80"
      fill_in "total_dosen_master", with: "800"
      fill_in "total_dosen_sarjana", with: "8000"
    end

    it "should create a prodi" do
      expect { click_button submit }.to change(Prodi, :count)
    end
  end

  describe "update data prodi" do
    let(:prodi) { FactoryGirl.create(:prodi) }
    before { visit edit_univ_prodi_path(prodi.univ, prodi) }

    describe "edit record" do

      before do
        fill_in "nama_prodi", with: "Sistem Informasi"
        #select(univ.nama_pt, :from => "univ")
        find(:xpath, "//input[@id='univ_id']").set univ.id
        fill_in "fakultas", with: "Teknologi Informasi"
        select(jenjang_prodi.jenjang, :from => "jenjang_prodi")
        fill_in "tahun_berdiri", with: "1980"
        fill_in "email", with: "si@its.ac.id"
        fill_in "website", with: "http://si.its.ac.id"
        fill_in "alamat", with: "Sukolilo Indah Kampus ITS"
        find(:xpath, "//input[@id='kota_id']").set kota.id #select(kota.kota, :from => "kota")
        find(:xpath, "//input[@id='prodi_bidang_id']").set prodi_bidang.id #select(prodi_bidang.nama_bidang, :from => "prodi_bidang")
        fill_in "telepon", with: "089977876"
        fill_in "fax", with: "089977876"
        fill_in "profil", with: "Jurusan terbaik"
        fill_in "jumlah_mahasiswa", with: "5000"
        fill_in "bidang_studi", with: "Botani; Zoologi; Mikrobiologi; Ekologi"
        fill_in "kompetensi", with: "Bisa copas code"
        fill_in "seleksi_masuk", with: "sogok"
        fill_in "total_dosen_prof", with: "80"
        fill_in "total_dosen_master", with: "800"
        fill_in "total_dosen_sarjana", with: "8000"
    end

    it "should create a prodi" do
      expect { click_button submit }.not_to change(Prodi, :count)
    end

    end
  end
end



