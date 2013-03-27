require 'spec_helper'

describe Kota do
  it { should have_many(:univs) }
  it { should belong_to(:provinsi) }
end
