class Profile < ApplicationRecord
validates :loaction,:about,:gender,:Address,:dateofbirth,:phone,presence: true

  belongs_to :user
  has_one_attached :profilepic
end
