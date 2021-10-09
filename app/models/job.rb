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
end
