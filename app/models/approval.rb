class Approval < ApplicationRecord
  enum approval: {承認待ち:0, 承認:1, 否認:2}

  validates :approval, presence: true

  belongs_to :user
  belongs_to :sub_business
end
