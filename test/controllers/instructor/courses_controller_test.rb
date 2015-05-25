require 'test_helper'

class Instructor::CoursesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "creates new course" do
  	assert_difference("Course.count") do
	  	post :create, :course => {
	  		:title => "Sean's Test",
	  		:description => "blurp blurp",
	  		:price => 400
	  	}
	end
  	assert_response :success
  end
end
