class Movie < ApplicationRecord
	# validates method specifices that an actor is valid only if 
	# title, duration, rating, and release_date are present 
	validates :title, :duration, :rating, :release_date, presence: true
end
