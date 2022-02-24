class AppearancesController < ApplicationController
	
	# index method get called when the appearanceres URL is requested 
	# index method is mapped to the appearances index.html.rb
	def index 
		# call all method on Actor model class. 
		# all method selects all of data in the actor table 
		# and returns the data as an array of objects. 
		# store the array of objects in an instance variable. 
		# instance variable is available to appearances index.html.erb
		@actors = Actor.all
		# call all method on Movie model class. 
		# all method selects all of data in the movie table 
		# and returns the data as an array of objects. 
		# store the array of objects in an instance variable. 
		# instance variable is available to appearances index.html.erb
		@movies = Movie.all
		return @actors, @movies
	end
	
	# create method gets called when the create button is pushed on the 
	# appearances index.html.erb
	def create
		# call constructor of Appearances model class giving it the 
		# actor id and movie id  parameters input in the appearances 
		# new.html.erb
		# constructor creates Appearances model object which is stored 
		# in variable 
		appearance = Appearance.new(appearance_params)
		# call save method on Appearances object 
		# save method inserts the data in the Appearances model object 
		# into the appearances table 
		if appearance.save
			# if the save method succeeds, request the appearnces URL
			# which will rendor the actors index.html.erb in the browser
			redirect_to "/actors" 
		else
			# get full messages associated with errors
			# store them in Rails flash object named errors so that 
			# the full messages may be displayed in the appearances index.html.erb 
			flash[:errors] = appearance.errors.full_messages
			# if the save method fails, request the appearances/new URL
			# which will rendor the actors new.html.erb in the browser
			redirect_to "/appearances/index"
		end 
	end

	# private methods always go at the bottem of your code
	private	
	def appearance_params
		# para is a Rails object that gets the specfied request 
		# parameters. 
		params.require(:appearance).permit(:actor_id, :movie_id)
	end 
end
