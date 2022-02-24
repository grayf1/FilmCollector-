class Appearance < ApplicationRecord
  # belongs_to method specifies a one to one relationship 
  # actor option specifies that one appearance has one actor 
  belongs_to :actor
  # movie option specfies that one appearance has one movie 
  belongs_to :movie
  # validates method specifies that an appearnce is valid only if 
  # an actor id and movie ide are present 
  validates :actor_id, :movie_id, presence: true
end
