class ComplexBuilding < ApplicationRecord
  has_one_attached :image

  validates :owner, :owner_email, :address, :units, :sqmt, :price, presence: true

end
