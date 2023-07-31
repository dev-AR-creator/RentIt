class User < ApplicationRecord

    has_one :profile
    has_many :items

def self.authenticate(email,pass)
    user=find_by email: email
    if user
    return user if user.pass==pass
    end
end


end
