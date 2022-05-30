class MainBusinessTime < ApplicationRecord
  belongs_to :timecard
  belongs_to :user

  validates :start_time_main, presence: true
end
