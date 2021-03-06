require 'active_record'

class Movie < ActiveRecord::Base
  #self.abstract_class = true
  #attr_accessible :title, :rating, :description, :release_date

  @@all_ratings = ["G", "PG", "PG-13", "NC-17", "R"]

  def self.all_ratings
    @@all_ratings
  end

  def self.find_by_director(m)
    return (m.director.blank? ? [] : Movie.all.where(director: m.director))
  end

end
