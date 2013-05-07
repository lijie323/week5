class Event < ActiveRecord::Base
  attr_accessible :DateTime, :name, :venue_id

  validates_presence_of :name

  belongs_to :venue

  def venue_name
    if Venue.find_by_id(self.venue_id) != nil
      @find_venue = Venue.find_by_id(self.venue_id)
      @venue_name = @find_venue.name
    else
      @venue_name = 'Unknown'
    end
    return @venue_name
  end

end
