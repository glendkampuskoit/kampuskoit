require 'spec_helper'

describe SubscriberOrganisasi do
  before { @subscriberorganisasi = SubscriberOrganisasi.new(nama_organisasi: "Himpunan Mahasiswa Sistem Informasi", jabatan: "Ketua Himpunan", tingkat:"Jurusan", periode:"2012-2013", path_sertifikat:'A:\START\tutorial') }

  subject{ @subscriberorganisasi}
  it { should respond_to(:nama_organisasi) }
  it { should respond_to(:jabatan) }
  it { should respond_to(:tingkat) }
  it { should respond_to(:periode) }
  it { should respond_to(:path_sertifikat) }
  
  it { should belong_to(:subscriber) }

  describe "When nama_organisasi is blank" do
    before { @subscriberorganisasi.nama_organisasi = " " } 
    it { should_not be_valid }
  end
  describe "When jabatan is blank" do
    before { @subscriberorganisasi.jabatan = " " } 
    it { should_not be_valid }
  end
  describe "When tingkat is blank" do
    before { @subscriberorganisasi.tingkat = " " } 
    it { should_not be_valid }
  end
  describe "When periode is blank" do
    before { @subscriberorganisasi.periode = " " } 
    it { should_not be_valid }
  end
  describe "When path_sertifikat is blank" do
    before { @subscriberorganisasi.path_sertifikat = " " } 
    it { should_not be_valid }
  end
end
