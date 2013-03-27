require 'spec_helper'

describe Prodi do
	it { should belong_to(:univ) }
	it { should belong_to(:kota) }
	it { should belong_to(:jenjang_prodi) }
  	it { should have_many(:prodi_prestasis) }
  	it { should have_many(:prodi_silabuses) }
  	it { should have_many(:prodi_fasils) }
  	it { should have_many(:prodi_galleries) }
  	it { should have_many(:prodi_akreditasis) }
end