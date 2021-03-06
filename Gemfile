source 'https://rubygems.org'

gem 'rails', '3.2.1'
gem 'bootstrap-sass', '2.0.0'
gem 'bcrypt-ruby', '3.0.1'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development, :production	 do
	gem 'mysql2', '~> 0.3.12b5'
	gem 'devise'
end

# gemfile for development & test env
group :development, :test do
	gem 'rspec-rails', '2.9.0'
	gem 'annotate', '~> 2.4.1.beta'
	gem "recaptcha", :require => "recaptcha/rails"
	gem 'therubyracer', :require => "v8"
	gem 'devise'
end

# group for tests only
group :test do
	gem 'capybara', '1.1.2'
	gem 'capybara-webkit'
	gem 'guard-rspec', '0.5.5'
	gem 'guard-spork', '0.3.2'
	gem 'spork', '0.9.0'
	gem 'factory_girl_rails', '1.4.0'
	gem 'shoulda-matchers'
	gem 'thinking-sphinx-rspec-matchers'
	gem 'simplecov', :require => false
end

# group for production
group :production do
	gem "recaptcha", :require => "recaptcha/rails"
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
end

gem 'jquery-rails'
gem 'tlsmail'
gem 'thinking-sphinx'
gem 'will_paginate', '~> 3.0.3'
gem 'will_paginate-bootstrap'
gem "cancan"
gem "friendly_id"
gem 'bootstrap-wysiwyg-rails'
gem 'rmagick'
gem 'carrierwave'
gem 'chronic'
gem 'haml'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
# gem 'unicorn'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

gem 'omniauth'
gem 'omniauth-facebook'
gem "omniauth-google-oauth2"