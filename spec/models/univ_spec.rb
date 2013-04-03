require 'spec_helper'

describe Univ do
  it { should belong_to(:kota) }
  it { should belong_to(:jenis_pt) }
  it { should have_many(:prodis) }
  it { should have_many(:univbeasiswas) }
  it { should have_many(:univfasilitases) }
  it { should have_many(:univgalleries) }
  it { should have_many(:univkerjasamas) }
  it { should have_many(:univprestasis) }
end
