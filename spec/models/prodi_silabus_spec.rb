require 'spec_helper'

describe ProdiSilabus do
  
  before { @prodisilabus = ProdiSilabus.new(tujuan: "Mendidik Mahasiswa dalam algoritma", kompetensi:"Mahasiswa mampu membuat testing scenario", pokok_bahasan: "Algoritma Pemrograman", referensi:"john maxwell") }

  subject { @prodisilabus }
  it { should respond_to(:tujuan) }
  it { should respond_to(:kompetensi) }
  it { should respond_to(:pokok_bahasan) }
  it { should respond_to(:referensi) }

  it { should belong_to(:prodi) }

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

end
