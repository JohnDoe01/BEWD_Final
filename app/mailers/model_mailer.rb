class ModelMailer < ActionMailer::Base
  default from: "postmaster@sandbox3014.mailgun.org"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.new_booking_notification.subject
  #
  def new_booking_notification(booking)
    @booking = booking

    mail to: "eryk.koziol@gmail.com", subject: "ADCManager"
  end
end
