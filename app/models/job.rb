class Job < ActiveRecord::Base

  has_many :job_duties
  has_many :duties, through: :job_duties
end
