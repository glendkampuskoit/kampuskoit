module OmniauthHelper

	RACK_ENV = ENV['ENVIRONMENT'] ||= 'test'
	OmniAuth.config.test_mode = true
	omniauth_hash =
	    {:provider => "facebook",
	     :uid      => "1055293652",
	     :info   => {:name       => "Glend Maatita",
	                 :email      => "the_entung@yahoo.com"},
	     :credentials => {:token => "AAAD4JohR3LkBAMZCF8iv5q2UiqLW2IPzdZALJO0jfjM23lUEVcA0JKMvDOpfCcsPRTzVrDgZAZCsGYyt9u8FH8SaZAlilumThu880LzGbKwZDZD"}}

	OmniAuth.config.add_mock(:facebook, omniauth_hash)
end