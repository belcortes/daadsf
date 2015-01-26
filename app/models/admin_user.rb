class AdminUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_and_belongs_to_many :users
  has_and_belongs_to_many :leaders
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable
end
