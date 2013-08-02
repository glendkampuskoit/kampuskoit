class DashboardController < ApplicationController
	layout 'admin'

	def index
		redirect_to new_admin_session_path unless current_user.present?
	end
end
