# == Schema Information
#
# Table name: jobs
#
#  id         :integer          not null, primary key
#  args       :string
#  job_type   :integer          default(0)
#  status     :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Job < ApplicationRecord
  enum status: [:waiting, :started, :finished]
  enum job_type: [:mailer_job]
  after_commit :add_job, on: [:create]
  scope :by_waiting, -> (id) { waiting.find_by(id: id) }
  private
  def add_job
    if self.mailer_job?
      MailerJob.perform_later(self.id)
    end
  end
end
