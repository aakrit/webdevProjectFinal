class User < ActiveRecord::Base
  attr_accessible :email, :password_digest, :password_confirmation, :username

  has_secure_password
  validates :email, uniqueness: true, presence: true
  has_many :photes

  has_many :user_events
  has_many :events, :through => :user_events

  has_many :user_groups
  has_many :groups, :through => :user_groups

end
