# Load the rails application
require File.expand_path('../application', __FILE__)
require 'chronic'
require 'reduce_validator'

# Initialize the rails application
Campus::Application.initialize!

ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  html_tag.html_safe
end