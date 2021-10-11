class MailerJob < ApplicationJob
  queue_as :mailer

  def perform(args)
    job = Job.by_waiting(args) 
    if job.present?
      job.started!
      params = JSON.parse(job.args.gsub(/\=\>/, ':'))
      ContactMailer.with(info: params, job: job).contact.deliver_later
    end   
  end
end
