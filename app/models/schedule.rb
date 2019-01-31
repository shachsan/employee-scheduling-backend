class Schedule < ApplicationRecord
  belongs_to :associate
  belongs_to :shift
  belongs_to :department
end
