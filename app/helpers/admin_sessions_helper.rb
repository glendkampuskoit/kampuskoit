module AdminSessionsHelper
	def sign_in(admin)
		cookies.permanent[:remember_token] = admin.remember_token
		self.current_admin = admin
	end

	def admin_signed_in?
		!current_admin.nil?
	end

	def current_admin=(admin)
		@current_admin = admin
	end

	def current_admin
		@current_admin ||= Admin.find_by_remember_token(cookies[:remember_token])
	end

	def sign_out
		self.current_admin = nil
		cookies.delete(:remember_token)
	end
end
