class User < ActiveRecord::Base

  attr_accessible :email, :password_digest, :username, :password, :password_confirmation, :password_digest
  # validates_confirmation_of :password_confirmation

  validates_presence_of :email

  has_secure_password

  validates :email, uniqueness: true, presence: true

  before_create :noemptyusername, on: :create

  def photos
    return Photo.where(:user_id => self.id)
  end

  protected
  def noemptyusername
    if self.username.empty?
      self.username = "newuser"
    end
  end
  def nophoto
    if self.username.empty?
      self.username = "newuser"
    end
  end


  # protected
  # def ensure_email_has_a_value
  #   if email.nil?
  #     self.email = email unless email.blank?
  #   end
  # end
  has_one :userdetail, :dependent => :destroy

  has_many :photos, :dependent => :destroy

  has_many :user_events
  has_many :events, :through => :user_events

  has_many :user_groups
  has_many :groups, :through => :user_groups

  #adding model callbacks

end
