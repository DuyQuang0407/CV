class MailerJob < ApplicationJob
  queue_as :mailer

  def perform(args)
    p args
     ContactMailer.with(info: args).contact.deliver_later
  end
end
