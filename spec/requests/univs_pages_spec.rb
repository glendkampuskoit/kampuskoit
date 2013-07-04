require 'spec_helper'

describe "Univ Page" do

  let(:kota) { FactoryGirl.create(:kota) }
  let(:jenis_pt) { FactoryGirl.create(:jenis_pt) }
  let(:submit) { "Save" }

  before do 
    kota
    jenis_pt
    visit new_univ_path
  end

  it "Index page should have right title Tambah Perguruan Tinggi" do
    page.should have_selector('title', :text => "Tambah Perguruan Tinggi")
  end

  # admin only
  describe "go to univ list on admin panel" do
    before { visit univs_list_path }
    it "should have title List Perguruan Tinggi" do
      page.should have_selector('title', :text => "Data Perguruan Tinggi")
    end     
  end

  describe "fill with valid data" do
    before do
      fill_in "nama_pt", with: "Universitas Airlangga"
      fill_in "tahun_berdiri", with: "1990"
      fill_in "email", with: "info@airlangga.ac.id"
      fill_in "website", with: "http://airlangga.ac.id"
      select(jenis_pt.jenis, :from => "jenis_pt")
      fill_in "alamat", with: "Jl Sukolilo ujung"
      select(kota.kota, :from => "kota")
      fill_in "telepon", with: "0866677665"
      select("Negeri", :from => "status_pt")
      fill_in "deskripsi", with: "Universitas airlangga adalah ..."
      fill_in "profil", with: "Universitas airlangga adalah ..."
      fill_in "visi", with: "Memajukan Negeri"
      #fill_in "misi", with: "Menjalankan fungsi universitas sebagai lembaga pendidikan sarjana"
      fill_in "seleksi_masuk", with: "SMPB, Nyogok"
      fill_in "kapasitas_akademik", with: "terdiri dari 5 guru dan 5 skk"
    end

    it "should create a univ" do
      expect { click_button submit }.to change(Univ, :count)
    end
  end

  describe "go to update page" do
    let(:univ) { FactoryGirl.create(:univ) }
    before { visit edit_univ_path(univ) }

    describe "then edit record" do
      before do
        fill_in "nama_pt", with: "Universitas Airlangga"
        fill_in "tahun_berdiri", with: "1990"
        fill_in "email", with: "info@airlangga.ac.id"
        fill_in "website", with: "http://airlangga.ac.id"
        select(jenis_pt.jenis, :from => "jenis_pt")
        fill_in "alamat", with: "Jl Sukolilo ujung"
        select(kota.kota, :from => "kota")
        fill_in "telepon", with: "0866677665"
        select("Negeri", :from => "status_pt")
        fill_in "deskripsi", with: "Universitas airlangga adalah ..."
        fill_in "profil", with: "Universitas airlangga adalah ..."
        fill_in "visi", with: "Memajukan Negeri"
        #fill_in "misi", with: "Menjalankan fungsi universitas sebagai lembaga pendidikan sarjana"
        fill_in "seleksi_masuk", with: "SMPB, Nyogok"
        fill_in "kapasitas_akademik", with: "terdiri dari 5 guru dan 5 skk"
      end

      it "should create a univ" do
        expect { click_button submit }.not_to change(Univ, :count)
      end
    end
  end


end