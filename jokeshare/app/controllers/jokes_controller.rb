class JokesController < ApplicationController

	def new
		@joke = Joke.new
		@joke_class = Array.new
		Course.all.each do |course|
			@joke_class.push(course.subject)
		end

		render :new
	end

	def create

		content = params[:joke][:content]
		jokeclass = params[:joke][:jokeclass]
		course = Course.where(:subject => jokeclass)[0]
		course.jokes.create(content: content, jokeclass: jokeclass, user_id: current_user)
		redirect_to root_path
	end
	
	def OSJokes
		@joke = Joke.all
		render :os
	end

	def NetworkingJokes
		@joke = Joke.all
		render :networking 
	end

	def GeneralJokes
		@joke = Joke.all
		render :cs
	end

	def upvote
	  @joke = Joke.find(params[:id])
	  @joke.upvote_by current_user
	  redirect_to :back
	end
	
end