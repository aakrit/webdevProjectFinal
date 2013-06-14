class Event < ActiveRecord::Base
  attr_accessible :description, :name, :time, :venue_id

  belongs_to :venue

  has_many :user_events
  has_many :users, :through => :user_events

  def users
    return User.where(:user_id => self.id)
  end

end
