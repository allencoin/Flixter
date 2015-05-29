require 'test_helper'

class CourseTest < ActiveSupport::TestCase

	test "new_course" do
	  course = FactoryGirl.create(:course)
	  assert_response :success
	end

	test "course show page, not found" do
		get :course, :course_id => 'blerg'
		assert_response :not_found
	end
end
