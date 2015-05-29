class LessonsController < ApplicationController
	before_action :authenticate_user!
	before_action :enrollment, only: :show
	def show
	end

	private
	helper_method :current_lesson
	def current_lesson
		@current_lesson ||= Lesson.find(params[:id])
	end

	def enrollment
		course = current_lesson.section.course

		if current_user.enrolled_in?(course) != true
			if current_lesson.section.course.user != current_user
				redirect_to course_path(course), alert: 'You are not enrolled in this course.'
			end
		end
	end
end
