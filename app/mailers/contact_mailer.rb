class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact_message.subject
  #
  def contact_message
    @greeting = "Hi"

    mail to: "testappkamila@gmail.com"
  end
end
