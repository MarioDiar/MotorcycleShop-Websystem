class Admin < ActiveRecord::Base

  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  devise :timeoutable, :timeout_in => 120.minutes
end
