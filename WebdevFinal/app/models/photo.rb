class Photo < ActiveRecord::Base
  attr_accessible :location, :title, :user_id

  belongs_to :user
end
