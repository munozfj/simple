class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def registration_confirmation(user)
    @user=user
    attachments["living-book.png"] = File.read("#{Rails.root}/app/assets/images/living-books.png")

    mail(to: "#{user.name} <#{user.email}>", subject: "Registrado en MySimple")
  end
end
