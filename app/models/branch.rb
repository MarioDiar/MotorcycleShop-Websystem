class Branch < ActiveRecord::Base
	validates :city, presence: true
	validates :street, presence: true
	validates :postalCode, presence: true
	validates :telephone, presence: true
	validates :email, presence: true
end
