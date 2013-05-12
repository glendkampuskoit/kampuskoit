require 'spec_helper'

describe Admin do
  # pending "add some examples to (or delete) #{__FILE__}"
  before { @admin = Admin.new(nama: "Glend Maatita", email: "entung@yahoo.com", password: "foobar", password_confirmation: "foobar") }

  subject { @admin }

  it { should respond_to(:nama) }
  it { should respond_to(:email) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:remember_token) }

  it { should respond_to(:authenticate) }

  it { should be_valid }

  describe "When nama is blank" do
    before { @admin.nama = "" } 
    it { should_not be_valid }
  end

  describe "When email is blank" do
    before { @admin.email = "" } 
    it { should_not be_valid }
  end

  describe "When email is invalid" do
    before { @admin.email = "entung@yahoo" } 
    it { should_not be_valid }
  end


end
