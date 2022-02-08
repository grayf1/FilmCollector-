class Actor < ApplicationRecord
	# validates method specifices that an actor is valid only if 
	# a first name and last name a present 
	validates :first_name, :last_name, presence: true
end
