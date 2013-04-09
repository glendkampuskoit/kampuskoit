require 'spec_helper'

describe Provinsi do
  it { should have_many(:subscribers) }
  it { should have_many(:kotas) }
end
