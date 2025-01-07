# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord

  def movie
    my_id = self.movie_id
    matching_movie = Movie.where({:id => my_id})
    the_movie = matching_movie.at(0)
    return the_movie
  end

  def actor

    actor_id = self.actor_id
    matching_actor = Actor.where({:id => actor_id})
    the_actor = matching_actor.at(0)
    return the_actor
  end
  

end
