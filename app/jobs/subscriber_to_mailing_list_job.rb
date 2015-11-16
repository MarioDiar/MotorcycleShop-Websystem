class SubscriberToMailingListJob < ActiveJob::Base
  queue_as :default

  def perform(subscriber)
  	mailchimp = Gibbon::Request.new
  	mailchimp.lists(ENV['MAILCHIMP_LIST_ID']).members.create(body: {email_address: subscriber.email, status: 'subscribed'})
  	# gibbon.lists(list_id).members.create(body: {email_address: "foo@bar.com", status: "subscribed", merge_fields: {FNAME: "Bob", LNAME: "Smith"}})
  end
end
