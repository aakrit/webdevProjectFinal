class Group < ActiveRecord::Base
  attr_accessible :description, :name, :type

  has_many :user_groups
  has_many :users, :through => :user_groups
end
