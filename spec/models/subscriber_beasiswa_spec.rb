require 'spec_helper'

describe SubscriberBeasiswa do
  before { @subscriberbeasiswa = SubscriberBeasiswa.new(nama_beasiswa: "Supersemar", instansi: "Kemendiknas", periode: "2013", nilai:"3.5") }

  subject{@subscriberbeasiswa}
  it { should respond_to(:nama_beasiswa) }
  it { should respond_to(:instansi) }
  it { should respond_to(:periode) }
  it { should respond_to(:nilai) }

  it { should belong_to(:subscriber) }


  describe "When nama_beasiswa is blank" do
    before { @subscriberbeasiswa.nama_beasiswa = " " } 
    it { should_not be_valid }
  end

  describe "When instansi is blank" do
    before { @subscriberbeasiswa.instansi = " " } 
    it { should_not be_valid }
  end

  describe "When periode is blank" do
    before { @subscriberbeasiswa.periode = " " } 
    it { should_not be_valid }
  end

  describe "When nilai is blank" do
    before { @subscriberbeasiswa.nilai = " " } 
    it { should_not be_valid }
  end

end
