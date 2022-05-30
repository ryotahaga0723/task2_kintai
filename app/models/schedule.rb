class Schedule < ApplicationRecord
  belongs_to :timecard
  belongs_to :user
  has_many :applies, dependent: :destroy

  enum holiday: {未入力:0, 平日:1, 休日:2, 有給休暇:3}

  validates :start_time_sch, presence: true
  validates :holiday, presence: true
end
