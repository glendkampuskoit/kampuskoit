FactoryGirl.define do
	factory :subscriber do
		name	"Glend Maatita"
		email	"glend_maatita@yahoo.com"
		password  "password"
		password_confirmation "password"
		from_facebook false
		email_activation false
	end

	factory :visitor do
		email	"glend_maatita@yahoo.com"
	end
end