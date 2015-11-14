class Admin < ActiveRecord::Base

  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable, :registerable
  #admins session only last 120 minutes, then it logs out
  devise :timeoutable, :timeout_in => 120.minutes
end
