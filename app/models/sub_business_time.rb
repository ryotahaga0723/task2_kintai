class SubBusinessTime < ApplicationRecord
  belongs_to :timecard
  belongs_to :user
  belongs_to :sub_business

  validates :start_time_sub, presence: true
end
