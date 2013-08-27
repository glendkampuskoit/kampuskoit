require 'spec_helper'
require 'cancan/matchers'

include CanCan::Ability

describe Ability do
  
  describe "abilities" do
    subject { ability }
    let(:ability){ Ability.new(admin) }
    let(:admin){ FactoryGirl.create(:admin) }

    context "when admin role is admin" do 
      before { admin.role = "admin" }
      it{ should be_able_to(:manage, :all) }
    end

    context "when admin role is editor" do 
      
      before { admin.role = "editor" }
      it{ should be_able_to(:manage, JenisPt.new) }
      it{ should be_able_to(:manage, JenjangProdi.new) }
      it{ should be_able_to(:manage, Kota.new) }
      it{ should be_able_to(:manage, Provinsi.new) }
      it{ should be_able_to(:manage, Univ.new) }
      it{ should be_able_to(:manage, Prodi.new) }
      it{ should_not be_able_to(:manage, Admin.new) }
    end

    context "when admin role is operator" do 
      
      before { admin.role = "operator" }
      it{ should be_able_to(:edit, Univ.new) }
      it{ should be_able_to(:edit, Prodi.new) }
      it{ should_not be_able_to(:manage, Univ.new) }
      it{ should_not be_able_to(:manage, Prodi.new) }
    end
  end
end
