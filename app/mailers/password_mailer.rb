class PasswordMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.password_mailer.reset.subject
  #
  def reset(user, token)
    @user = user
    @token = token
    mail(to: user.email, subject: 'Password Reset Request')
  end  
end
