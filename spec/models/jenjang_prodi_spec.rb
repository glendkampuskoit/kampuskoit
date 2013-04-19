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

    describe "jenjang prodi must be unique" do
    	before do
    		@jenjangprodi_dup = @jenjangprodi.dup
    		@jenjangprodi_dup.save
    	end
    	it { should_not be_valid }
    end

    describe "jenjang prodi must be unique with case insensitive" do
    	before do
    		@jenjangprodi_dup = JenjangProdi.new(jenjang: "s1") 
    		@jenjangprodi_dup.save
    	end
    	it { should_not be_valid }
    end
end
