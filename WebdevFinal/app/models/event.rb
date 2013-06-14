class Event < ActiveRecord::Base
  attr_accessible :description, :name, :time, :venue_id

  belongs_to :venue

  has_many :user_events
  has_many :users, :through => :user_events
  before_create :noemptyeventname, on: :create

  def users
    return User.where(:user_id => self.id)
  end

  protected
  def noemptyeventname
    if self.name.empty?
      self.name = "To be Decided!"
    end
  end

end
