class ContactMailer < ActionMailer::Base
  default subject: "RO Site Lead"

  def deliver_lead(contact)
    @contact = contact
    mail(to: 'bob@rebel-outpost.com', from: @contact.email)
  end

end
