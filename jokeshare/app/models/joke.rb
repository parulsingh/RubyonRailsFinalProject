class Joke < ActiveRecord::Base
	belongs_to :user
	belongs_to :course
	has_many :comment
	acts_as_commontable
	acts_as_votable
	validates_presence_of :content, :jokeclass
	def score
  		self.get_upvotes.size
  	end
end
