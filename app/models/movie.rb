# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord

  def director

    my_director_id = self.director_id
    matching_directors = Director.where({:id => my_director_id})
    the_director = matching_directors.at(0)
    return the_director
  end

  def characters
    my_id = self.id
    matching_characters = Characters.where({:movie_id => my_id})
    return matching_characters

  end


end
