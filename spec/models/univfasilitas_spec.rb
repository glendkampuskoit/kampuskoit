require 'spec_helper'

describe Univfasilitas do
   it { should belong_to(:univ) }
   it { should have_many(:univ_fasilitas_galleries) }
end
