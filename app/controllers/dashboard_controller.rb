class DashboardController < ApplicationController
	layout 'admin'

	def index
		if !current_user.present?
			redirect_to new_admin_session_path
		end
	end
end
