class JobDuty < ActiveRecord::Base
  belongs_to :job
  belongs_to :duty
end
