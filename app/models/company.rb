
class Company < ApplicationRecord
  validates :country, presence: true
  validates :name, presence: true, uniqueness: true, length: { maximum: 40 }
end