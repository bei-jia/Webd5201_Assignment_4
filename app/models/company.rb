
class Company < ApplicationRecord
    has_one_attached :founder_image
    # validate
    validates :company_name, presence: true
    validates :company_founder, presence: true
    validates :company_founding_time, presence: true
    validates :company_headcount, presence: true, numericality: { only_integer: true, greater_than: 0 }
    validates :headquarter_address, presence: true
  end
  