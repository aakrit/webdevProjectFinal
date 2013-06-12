class Event < ActiveRecord::Base
  attr_accessible :description, :name, :time

  belongs_to :venue

  has_many :user_events
  has_many :events, :through => :user_events
end
