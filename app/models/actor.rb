class Actor < ApplicationRecord
	# has_many method specifies a one to many relationship 
	# appearances option specifies that one actor has many appearances 
	has_many :appearances
	# movies option specifies that ine actor has many movies 
	# the through option specifies that the relationship exists 
	# only through appearances
	has_many :movies, through: :appearances
	# validates method specifices that an actor is valid only if 
	# a first name and last name a present 
	validates :first_name, :last_name, presence: true
end
