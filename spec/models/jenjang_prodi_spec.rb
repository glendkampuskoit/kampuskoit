require 'spec_helper'

describe JenjangProdi do
	before { @jenjangprodi = JenjangProdi.new(jenjang: "S1") }

	subject{ @jenjangprodi }
	it { should respond_to(:jenjang) }

  	it { should have_many(:prodis) }

  	describe "When jenjang is blank" do
    	before { @jenjangprodi.jenjang = " " } 
    	it { should_not be_valid }
  end
end
