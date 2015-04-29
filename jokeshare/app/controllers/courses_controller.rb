class CoursesController < ApplicationController

	def new
		@course = Course.new
		render :new
	end

	def create
		subject = params[:course][:subject]
		image = params[:course][:image]
		course = Course.new
		course.subject = subject
		course.image = image
		if(course.valid?)
			course.save
			redirect_to root_path
		else
			flash[:error] = course.errors.first.to_sentence
			new
		end
	end

	def jokes
		@course = Course.find(params[:course_param])
		@jokes = @course.jokes
		render :joke
	end


end
