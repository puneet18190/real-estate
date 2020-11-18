class CommercialUnit < ApplicationRecord
  has_one_attached :image

  validates :owner, :owner_email, :address, :shops, :sqmt, :parking, :price, presence: true

end
