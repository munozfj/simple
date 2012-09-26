require 'development_mail_interceptor' #add this line

#Si se quiere interceptar los mails salientes
#ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor) #if  Rails.env.development? || Rails.env.production?

