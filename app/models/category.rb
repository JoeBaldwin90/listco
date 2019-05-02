class Category < ApplicationRecord

  has_many :listings

  validates :title, presence: true, length: { maximum: 30 }, uniqueness: true

end
