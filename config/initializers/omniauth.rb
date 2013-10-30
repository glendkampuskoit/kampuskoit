Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '457191674324882', '650f65622c62e65b9fe027dcb91c59df'
end