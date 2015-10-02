class Branch < ActiveRecord::Base
	#validations for branches
	validates :city, presence: true
	validates :street, presence: true
	validates :postalCode, presence: true
	validates :telephone, presence: true
	validates :email, presence: true
end
