class User < ApplicationRecord
validates :email,:pass,:name, presence:true
validates :email,uniqueness: true
validates :pass,length: {minimum:8, maximum:12}

    has_one :profile
    has_many :items

def self.authenticate(email,pass)
    user=find_by email: email
    if user
    return user if user.pass==pass
    end
end


end
