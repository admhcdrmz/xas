class MessageMailer < ApplicationMailer
  default from: "xas@abc.com"
  default to: "abc@xas.com.tr"

  def new_message(message)
    @message = message
    mail(to: @message.email, subject: @message.subject)
    $xaslogger.info "Message mailer/new_message action : sent message used dasboard quickmail form"
  end

end
