class SubscriberToMailingListJob < ActiveJob::Base
  queue_as :default

  def perform(subscriber)
  	mailchimp = Gibbon::Request.new

  	mailchimp.lists(ENV['MAILCHIMP_LIST_ID']).members.create(body: {email_address: subscriber.email, status: 'pending'})
  end
end
