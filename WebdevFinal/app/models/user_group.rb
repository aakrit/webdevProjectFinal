class UserGroup < ActiveRecord::Base
  attr_accessible :group_id, :user_id

  belongs_to :users
  belongs_to :groups
end
