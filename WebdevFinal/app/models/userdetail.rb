class Userdetail < ActiveRecord::Base
  attr_accessible :firstname, :hobbies, :lastname, :location, :otherinfo

  belongs_to :user
end
