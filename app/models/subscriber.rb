class Subscriber < ActiveRecord::Base

	after_create :subscribing_to_mailchimp

	private

	def subscribing_to_mailchimp
		SubscriberToMailingListJob.perform_later(self)
	end

end
