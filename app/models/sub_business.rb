class SubBusiness < ApplicationRecord
  enum status: {未入力:0, 雇用契約（弊社が先の場合）:1, 雇用契約（弊社が後の場合）:2, 雇用モデル:3, その他:4}

  validates :status, presence: true
  validates :sub_business_company, presence: true, length: { maximum: 255 }
  validates :sub_business_content, presence: true, length: { maximum: 255 }

  belongs_to :user
  has_one :approval, dependent: :destroy
  has_many :sub_business_times, dependent: :destroy
  accepts_nested_attributes_for :approval

end
