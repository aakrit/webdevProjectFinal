class Venue < ActiveRecord::Base
  attr_accessible :address, :name

  has_many :events

  def events
    return Event.where(:venue_id => self.id)
  end



end
