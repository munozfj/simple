class DevelopmentMailInterceptor

  def self.delivering_email(message)
    message.subject = "#{message.to} #{message.subject}"
    message.to="munozfj@gmail.com" #mail donde se enviara la copia del mail

  end

end

