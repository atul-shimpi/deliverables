class PropertyInterestMail < ApplicationMailer
  default from: "shimpiatul@hotmil.com"
  layout 'mailer'

  def interest_mail(user, property)
    @user = user
    @property = property

    mail(to: @property.user.email_id, subject: 'Congratulations - Someone interested in your property')
  end
end
