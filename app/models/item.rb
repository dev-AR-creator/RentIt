class Item < ApplicationRecord

  validates :name,:price,:location,:condition,:duration,:details,presence: true

  belongs_to :user
  has_one_attached :itemphoto
end
