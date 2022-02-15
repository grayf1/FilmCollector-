# each route consists of 3 parts: 1. HTTP method, 2. URL to web page 
# view being requested, 3. name of Ruby class and method envoked when 
# URL to web page view is requested.
Rails.application.routes.draw do
  # when a get request is made for the actors URL, 
  # Rails envokes the index method in the actors Ruby controller class. 
  # Rails automatically maps the index method to a web page view named 
  #index.html.erb and serves the web page to the browser where its rendered.
  get "actors" => "actors#index"
  get "actors/new" => "actors#new"
  # when a post request is made for the actors to the URL, 
  # Rails envokes the create method in the actors Ruby Controller class
  post "actors" => "actors#create"
  get "movies" => "movies#index"
  get "movies/new" => "movies#new"
  post "movies" => "movies#create"
  get "actors/:id" => "actors#show"
  get "movies/:id" => "movies#show"
end
