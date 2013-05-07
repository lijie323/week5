class Character < ActiveRecord::Base
  attr_accessible :name

  validates_presence_of :name

  belongs_to :movie
  belongs_to :actor

  # def movie
  #   Movie.find_by_id(self.movie_id)
  # end

end
