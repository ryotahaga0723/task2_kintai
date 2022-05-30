class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 255 }
  validates :email, presence: true, length: { maximum: 255 }, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_validation { email.downcase! }
  has_secure_password
  validates :password, length: { minimum: 6, maximum: 255 }
  
  has_many :sub_businesses, dependent: :destroy
  has_many :timecards, dependent: :destroy
  has_many :approvals, dependent: :destroy
  has_many :schedules, dependent: :destroy
  has_many :main_business_times, dependent: :destroy
  has_many :applies, dependent: :destroy
  has_one :contract, dependent: :destroy
  accepts_nested_attributes_for :contract

  def sub_business_2_presents?
    sub_businesses.left_outer_joins(:approval).where(sub_businesses: {status: "雇用契約（弊社が後の場合）"}).where(approvals: {approval: "承認"}).present?
  end

  def sub_business_3_presents?
    sub_businesses.left_outer_joins(:approval).where(sub_businesses: {status: "雇用モデル"}).where(approvals: {approval: "承認"}).present?
  end

end