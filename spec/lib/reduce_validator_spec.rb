require 'spec_helper'

describe ReduceValidator do 
	let(:reduce_validator) { ReduceValidator.new ( {:attributes => {}} ) }
	
	let (:item) { mock_model("Item") }
	subject { item }

	before(:each) do
		item.errors.add(:name, "message one")
		item.errors.add(:name, "message two")
	end

	it { should have(2).error_on(:name) }

	it "should reduce validator" do
		reduce_validator.validate_each(item, :name, '')
		should have(1).error_on(:name)
	end
end