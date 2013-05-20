module SessionsHelper
	def sign_in(subscriber)
		cookies.permanent[:remember_token] = subscriber.remember_token
		self.current_subscriber = subscriber
	end

	def signed_in?
		!current_subscriber.nil?
	end

	def current_subscriber=(subscriber)
		@current_subscriber = subscriber
	end

	def current_subscriber
		@current_subscriber ||= Subscriber.find_by_remember_token(cookies[:remember_token])
	end

	def sign_out
		self.current_subscriber = nil
		cookies.delete(:remember_token)
	end


	# admin session helper
	# ada beberapa yang diganti, for the CanCan SAKE !!
	def admin_sign_in(admin)
		cookies.permanent[:remember_token] = admin.remember_token
		self.current_user = admin
	end

	def admin_signed_in?
		!current_user.nil?
	end

	def current_user=(admin)
		@current_user = admin
	end

	def current_user
		@current_user ||= Admin.find_by_remember_token(cookies[:remember_token])
	end

	def admin_sign_out
		self.current_user = nil
		cookies.delete(:remember_token)
	end
	
end
