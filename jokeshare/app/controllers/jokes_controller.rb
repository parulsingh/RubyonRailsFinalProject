class JokesController < ApplicationController

	def new
		@joke = Joke.new
		render :new
	end

	def create
		content = params[:joke][:content]
		jokeclass = params[:joke][:jokeclass]
		joke = Joke.new
		joke.content = content
		joke.jokeclass = jokeclass
		joke.user_id = current_user
		joke.save
		redirect_to root_path
	end
end