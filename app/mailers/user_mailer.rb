class UserMailer < ActionMailer::Base
  default from: "noreply@JackieConsignsDecatur.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.contact_message.subject
  #
  def contact_message(contact)
    @contact = contact

    mail to: "jackieconsignsdecatur@yahoo.com",
      cc: contact.email,
      subject: contact.subject
  end
end
