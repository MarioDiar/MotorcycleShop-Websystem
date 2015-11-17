class Subscriber < ActiveRecord::Base

	validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
	after_create :subscribing_to_mailchimp

	private

	def subscribing_to_mailchimp
		SubscriberToMailingListJob.perform_later(self)
	end

end
