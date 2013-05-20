class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  check_authorization
  rescue_from CanCan::AccessDenied do |exception|
    render :file => "#{Rails.root}/public/404.html", :status => 404, :layout => false #confuse intruder with 404 message
  end
end
