class Leader < ActiveRecord::Base
  has_and_belongs_to_many :admin_users
  has_and_belongs_to_many :users
end
