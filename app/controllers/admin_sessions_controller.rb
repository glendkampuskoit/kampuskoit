class AdminSessionsController < ApplicationController
	layout "login"
	
  def new
    if current_user
      redirect_to dashboard_path
    end
  end

  def create
  	admin = Admin.find_by_email(params[:admin_session][:email])
  	  if admin && admin.authenticate(params[:admin_session][:password])
  	  	# success
  	    admin_sign_in admin
  	    redirect_to dashboard_path
  	  else
  	  	# login failed
  	  	flash[:login_error] = 'Email atau password salah'
  	  	redirect_to new_admin_session_path
  	  end
  end

  def destroy
    admin_sign_out
    redirect_to new_admin_session_path
  end
end
