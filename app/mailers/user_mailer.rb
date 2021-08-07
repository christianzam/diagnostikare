class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.appointment_boooked.subject
  #
  def appointment_boooked
    @greeting = "Hi"

    mail to: User.first.email, subject: "Appointment Confirmation"
  end
end
