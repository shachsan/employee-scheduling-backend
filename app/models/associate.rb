class Associate < ApplicationRecord
  belongs_to :department

  has_many :schedules, dependent: :destroy
end
