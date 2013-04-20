require 'spec_helper'

describe SubscriberRekomendasi do

  before { @subscriberrekomendasi = SubscriberRekomendasi.new(
    subscriber: FactoryGirl.create(:subscriber),
    nama_rekomendator:"Agung Laksono", 
    jabatan:"Rektor", 
    email:"agung@kampus.co.id", 
    telepon:"085648077379") }

  subject{ @subscriberrekomendasi }

  it { should respond_to(:nama_rekomendator) }
  it { should respond_to(:jabatan) }
  it { should respond_to(:email) }
  it { should respond_to(:telepon) }
  it { should respond_to(:subscriber)}

  it { should belong_to(:subscriber) }

  it { should be_valid }

  describe "When nama_rekomendator is blank" do
    before { @subscriberrekomendasi.nama_rekomendator = "" } 
    it { should_not be_valid }
  end

    describe "When jabatan is blank" do
    before { @subscriberrekomendasi.jabatan = "" } 
    it { should_not be_valid }
  end

   describe "when email is invalid" do
		it "should be invalid" do
			addresses = %w[subscriber@foo,com subscriber_at_foo.org example.subscriber@foo foo@bar_bar.com foo@bar+baz.com]
			addresses.each do |invalid_address|
				@subscriberrekomendasi.email = invalid_address
				@subscriberrekomendasi.should_not be_valid
			end
		end
	end

	describe "when email is valid" do
		it "should be valid" do
			addresses = %w[subscriber@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
			addresses.each do |valid_address|
				@subscriberrekomendasi.email = valid_address
				@subscriberrekomendasi.should be_valid
			end
		end
	end

  describe "When telepon is blank" do
    before { @subscriberrekomendasi.telepon = "" } 
    it { should_not be_valid }
  end

  describe "subscriber, nama_rekomendator, email must be unique with case insensitive" do
    before do
      @subscriberrekomendasi_dup = SubscriberRekomendasi.new(
        subscriber: @subscriberrekomendasi.subscriber,
        nama_rekomendator:"agung lAksono", 
        jabatan:"RektoR", 
        email:"agung@kampus.co.id", 
        telepon:"085648077379")
      @subscriberrekomendasi_dup.save
    end
    it { should_not be_valid }
  end
end
