class User < ApplicationRecord
    has_one :profile
    has_many :items
end
