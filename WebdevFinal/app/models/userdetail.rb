class Userdetail < ActiveRecord::Base
  attr_accessible :firstname, :hobbies, :lastname, :location, :otherinfo, :user_id

  validates :user_id, uniqueness: true

  belongs_to :user

end
