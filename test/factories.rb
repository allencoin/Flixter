FactoryGirl.define do  factory :enrollment do
    
  end

  factory :course do
    title "How To Write a Test"
    description "Writing a test 101."
    cost 404
  end

  factory :user do
  	email "test@test.com"
  	password "testtest"
  end
end