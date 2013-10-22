OmniAuth.config.logger = Rails.logger

OmniAuth.config.full_host = "http://localhost:3000"
Rails.application.config.middleware.use OmniAuth::Builder do
	provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_SECRET'], {:client_options => {:ssl => {:verify => false}}}
	#provider :google_oauth2, ENV["GOOGLE_KEY"], ENV["GOOGLE_SECRET"]
	provider :google_oauth2, ENV["GOOGLE_KEY"], ENV["GOOGLE_SECRET"],
	{
		:scope => "plus.login",
		:prompt => "select_account",
	}
end