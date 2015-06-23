class ContactMailer < ApplicationMailer
	def contact_email(contact)
		@contact = contact
		mail(to: "runnersmotos@gmail.com",subject: "Mensaje Bajaj Colima Web")
	end
end
