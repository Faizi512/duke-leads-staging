class UserMailer < ApplicationMailer
  default from: 'cduke482@gmail.com'

  def new_register(user)
    @user = user
    mail(to: "data@dukeleads.com, charles@dukeleads.com", subject: 'New Query From DukeLeads')
  end
end
