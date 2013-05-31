class AdminProfilesController < ApplicationController

	def edit
		@admin = current_user		
	end

	def update
		
	end
end
