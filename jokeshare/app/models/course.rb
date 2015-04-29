class Course < ActiveRecord::Base
	has_many :jokes
	validates_presence_of :subject, :image
	validates_uniqueness_of :subject, :case_sensitive => false
end
