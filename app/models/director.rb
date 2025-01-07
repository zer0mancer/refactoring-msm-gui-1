# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord

  def filmography

    my_id = self.id
    matching_movies = Movie.where({:director_id => my_id})
   # the_movie = matching_movies.at(0)
   #  return the_movie || to get one movie
   return matching_movies
  end
end
