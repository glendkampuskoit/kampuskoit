require 'spec_helper'

describe Univfasilitas do
	before { @univfasilitas = Univfasilitas.new(fasilitas: "Lapangan Golf") }

	subject {@univfasilitas}
	it { should respond_to(:fasilitas) }

    it { should belong_to(:univ) }
    it { should have_many(:univ_fasilitas_galleries) }

   describe "When fasilitas is blank" do
    before { @univfasilitas.fasilitas = " " } 
    it { should_not be_valid }
  end
end
