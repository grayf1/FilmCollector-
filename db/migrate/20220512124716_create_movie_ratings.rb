class CreateMovieRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_ratings do |t|
      t.string :title
      t.string :rating

      t.timestamps
    end
  end
end
