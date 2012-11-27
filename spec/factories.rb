FactoryGirl.define do
	factory :user do
		name	"James Hwang"
		email	"james@james.com"
		password "foobar"
		password_confirmation	"foobar"
	end
end