class Joke < ActiveRecord::Base
	belongs_to :user
	has_many :comment
	acts_as_commontable
	acts_as_votable
	def score
  		self.get_upvotes.size
  	end
end
