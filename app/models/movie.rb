class Movie < ApplicationRecord
	# has_many method specifies a one to many relationship 
	# appearances option specifies that one movie has many appearances 
	has_many :appearances
	# actors option specifies that one movie has many actors 
	# the through option specifies that the relationship exists 
	# only through appearances
	has_many :actors, through: :appearances
	# validates method specifices that an actor is valid only if 
	# title, duration, rating, and release_date are present 
	validates :title, :duration, :rating, :release_date, presence: true
end
