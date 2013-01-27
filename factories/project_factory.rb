FactoryGirl.define do 
  factory :project do
    name 				  { |n| "project#{n}" }
  end
end