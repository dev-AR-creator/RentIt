class Item < ApplicationRecord



  belongs_to :user
  has_one_attached :itemphoto
end
