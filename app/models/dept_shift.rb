class DeptShift < ApplicationRecord
  belongs_to :department
  belongs_to :shift
end
