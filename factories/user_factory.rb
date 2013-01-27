#Factory.define :user do |user|
#	user.sequence(:email) { |n| "user#{n}@ticketee.com" }
#	user.password "password"
#	user.password_confirmation "password"
#end

FactoryGirl.define do 
  factory :user do
    #name                  "Michael Hartl"
    #email                 "mhartl@example.com"
    email 				  { |n| "user#{n}@ticketee.com" }
    password              "foobar"
    password_confirmation "foobar"
  end
end