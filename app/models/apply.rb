class Apply < ApplicationRecord
  enum apply: {承認待ち:0, 承認:1, 否認:2}
  enum classification: {未記入:0, 申請:1, 取り消し:2}

  belongs_to :user
  belongs_to :schedule
end
