class Restaurant < ApplicationRecord
  has_many  :reviews, dependent: :destroy
  validates :address, presence: true
  validates :name, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"],
    message: "%{value} is not a valid category!" }
end
