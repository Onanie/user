class NotifierMailer < ApplicationMailer
    default from: 'no-reply@example.com',
    return_path: 'system@example.com'

def archived(recipient)
@account = recipient
mail(to: recipient.email_address_with_name,
   bcc: ["bcc@example.com", "Order Watcher <watcher@example.com>"])
end
end