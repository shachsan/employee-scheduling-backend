class Department < ApplicationRecord
  belongs_to :dept_manager
  has_many :associates
  has_many :schedules
end
