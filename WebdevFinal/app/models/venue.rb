class Venue < ActiveRecord::Base
  attr_accessible :address, :name

  has_many :events
  before_create :noaddress, on: :create

  def events
    return Event.where(:venue_id => self.id)
  end


  protected
  def noaddress
    if self.address.empty?
      self.address = "Merchantise Mart"
    end
  end

end
