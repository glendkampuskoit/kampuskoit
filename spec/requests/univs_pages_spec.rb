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
      fill_in "univ_nama_pt", with: "Universitas Airlangga"
      fill_in "univ_tahun_berdiri", with: "1990"
      fill_in "univ_email", with: "info@airlangga.ac.id"
      fill_in "univ_website", with: "http://airlangga.ac.id"
      select(jenis_pt.jenis, :from => "univ_jenis_pt_id")
      fill_in "univ_alamat", with: "Jl Sukolilo ujung"
      select(kota.kota, :from => "univ_kota_id")
      fill_in "univ_telepon", with: "0866677665"
      select("Negeri", :from => "univ_status_negeri")
      fill_in "univ_deskripsi", with: "Universitas airlangga adalah ..."
      fill_in "univ_profile", with: "Universitas airlangga adalah ..."
      fill_in "univ_visi", with: "Memajukan Negeri"
      #fill_in "univ_misi", with: "Menjalankan fungsi universitas sebagai lembaga pendidikan sarjana"
      fill_in "univ_seleksi_masuk", with: "SMPB, Nyogok"
      fill_in "univ_kapasitas_akademik", with: "terdiri dari 5 guru dan 5 skk"
      fill_in "univ_facebook", with: "http://facebook.com/kampuscoid"
      fill_in "univ_twitter", with: "http://twitter.com/kampuscoid"
      fill_in "univ_youtube", with: "http://youtube.com/kampuscoid"
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
        fill_in "univ_nama_pt", with: "Universitas Airlangga"
        fill_in "univ_tahun_berdiri", with: "1990"
        fill_in "univ_email", with: "info@airlangga.ac.id"
        fill_in "univ_website", with: "http://airlangga.ac.id"
        select(jenis_pt.jenis, :from => "univ_jenis_pt_id")
        fill_in "univ_alamat", with: "Jl Sukolilo ujung"
        select(kota.kota, :from => "univ_kota_id")
        fill_in "univ_telepon", with: "0866677665"
        select("Negeri", :from => "univ_status_negeri")
        fill_in "univ_deskripsi", with: "Universitas airlangga adalah ..."
        fill_in "univ_profile", with: "Universitas airlangga adalah ..."
        fill_in "univ_visi", with: "Memajukan Negeri"
        #fill_in "univ_misi", with: "Menjalankan fungsi universitas sebagai lembaga pendidikan sarjana"
        fill_in "univ_seleksi_masuk", with: "SMPB, Nyogok"
        fill_in "univ_kapasitas_akademik", with: "terdiri dari 5 guru dan 5 skk"
        fill_in "univ_facebook", with: "http://facebook.com/kampuscoid"
        fill_in "univ_twitter", with: "http://twitter.com/kampuscoid"
        fill_in "univ_youtube", with: "http://youtube.com/kampuscoid"
      end

      it "should create a univ" do
        expect { click_button submit }.not_to change(Univ, :count)
      end
    end
  end


end