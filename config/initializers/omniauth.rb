Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '457191674324882', '650f65622c62e65b9fe027dcb91c59df'
  provider :google_oauth2, '125585142433.apps.googleusercontent.com', 'JjqJ9YJhDjmsoauNgb-H8h1E'
end