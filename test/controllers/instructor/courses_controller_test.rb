require 'test_helper'

class Instructor::CoursesControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  test "creates new course" do
    @user = FactoryGirl.create(:user)
    sign_in @user
  	assert_difference("Course.count") do
	  	post :create, :course => {
	  		:title => "Sean's Test",
	  		:description => "blurp blurp",
	  		:cost => "400"
	  	}
	  end
  	assert_response :redirect
  end
end
