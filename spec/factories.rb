FactoryGirl.define do
	factory :user do
		name	"Glend Maatita"
		email	"glend_maatita@yahoo.com"
		password  "password"
		password_confirmation "password"
		from_facebook false
		email_activation false
	end

	factory :subscriber do
		email	"glend_maatita@yahoo.com"
	end
end