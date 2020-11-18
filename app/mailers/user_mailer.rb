class UserMailer < ApplicationMailer

  def owner_mail(owner_email)
    @owner_email = owner_email
    mail(to: owner_email, subject: 'Success of the operation')
  end
end
