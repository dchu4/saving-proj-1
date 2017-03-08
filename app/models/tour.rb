class Tour < ApplicationRecord
  validates :first_name, :email, :tour_date, :tour_time, presence: true
end
