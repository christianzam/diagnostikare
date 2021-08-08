# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/appointment_boooked
  def appointment_boooked
    UserMailer.with(user: User.first, appointment: Appointment.first).appointment_boooked
  end

end
