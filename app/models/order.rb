class Order < ApplicationRecord
  validates :site_name, presence: true
  validates :consignee, presence: true
  validates :desired_date, format: {with: /\A[0-9]{4}-[0-1]{1}[0-9]{1}-[0-3]{1}[0-9]{1}\z/}
  validates :part_number, presence: true
  validates :delively_place, presence: true
  validates :tel, format: {with: /\A(((0(\d{1}[-(]?\d{4}|\d{2}[-(]?\d{3}|\d{3}[-(]?\d{2}|\d{4}[-(]?\d{1}|[5789]0[-(]?\d{4})[-)]?)|\d{1,4}\-?)\d{4}|0120[-(]?\d{3}[-)]?\d{3})\z/}



  belongs_to :user



end


