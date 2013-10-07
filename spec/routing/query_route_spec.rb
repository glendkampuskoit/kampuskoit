require 'spec_helper'

describe "Query String Routing" do 

	#describe "query string should include in params" do
	#	let(:query_string) { "http://localhost:3000/confirm?token=asert423r23f324f43w&memberid=2323" }
	#end

	pending "routing test" do
		it "should to route to subscribers#confirm}" do
		get("/confirm").should route_to(
				:controller => "subscribers",
     			:action => "confirm")
		end
	end

	#describe "query string should become params" do
	#	let(:route) { '/confirm?token=898978868787' }
	#	it "should have params" do
	#		get(route).should route_to(
	#			:controller => "subscribers", :action => "confirm")
	#	end
	#end
end