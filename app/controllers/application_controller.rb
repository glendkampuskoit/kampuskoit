class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  #check_authorization
  #skip_load_and_authorize_resource
  rescue_from CanCan::AccessDenied do |exception|
    render :file => "#{Rails.root}/public/404", :formats => [:html], :status => 404, :layout => false #confuse intruder with 404 message
  end
end
