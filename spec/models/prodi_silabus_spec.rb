require 'spec_helper'

describe ProdiSilabus do
  
  before { @prodisilabus = ProdiSilabus.new(prodi: FactoryGirl.create(:prodi),
    mata_kuliah: "Algoritma dan Pemograman", 
    tujuan: "Mendidik Mahasiswa dalam algoritma", 
    kompetensi:"Mahasiswa mampu membuat testing scenario", 
    pokok_bahasan: "Algoritma Pemrograman", 
    referensi:"john maxwell") }

  subject { @prodisilabus }
  it { should respond_to(:tujuan) }
  it { should respond_to(:kompetensi) }
  it { should respond_to(:pokok_bahasan) }
  it { should respond_to(:referensi) }
  it { should respond_to(:prodi) }

  it { should belong_to(:prodi) }

  describe "should be valid" do
    it { should be_valid }
  end

  describe "nama tujuan blank is not valid" do
    before { @prodisilabus.tujuan = '' }
		it { should_not be_valid }
  end

  describe "nama kompetensi blank is not valid" do
    before { @prodisilabus.kompetensi = '' }
		it { should_not be_valid }
  end

  describe "nama pokok_bahasan blank is not valid" do
    before { @prodisilabus.pokok_bahasan = '' }
		it { should_not be_valid }
  end

  describe "nama referensi blank is not valid" do
    before { @prodisilabus.referensi = '' }
		it { should_not be_valid }
  end

  describe "prodi and mata kuliah must be unique with case insensitive" do
    before do
      @prodisilabus_dup = ProdiSilabus.new(prodi: @prodisilabus.prodi, 
        mata_kuliah: "algoritma dan pemograman",
        tujuan: "Mendidik Mahasiswa dalam algoritma", 
        kompetensi:"Mahasiswa mampu membuat testing scenario", 
        pokok_bahasan: "Algoritma Pemrograman", 
        referensi:"john maxwell")
      @prodisilabus_dup.save
    end
    it { should_not be_valid }
  end

end
