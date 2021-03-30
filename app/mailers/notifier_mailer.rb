class NotifierMailer < ApplicationMailer
    default from: 'no-reply@example.com',
    return_path: 'system@example.com'

def archived(recipient)
@user = recipient
mail(to: recipient.email, subject:"Account archived"  
   bcc: ["bcc@example.com"])
end
end
