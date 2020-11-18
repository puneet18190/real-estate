class House < ApplicationRecord
  has_one_attached :image

  validates :owner, :owner_email, :address, :rooms, :sqmt, :floors, :price, presence: true
end
