class User < ApplicationRecord
    has_many :purchased_boxes
    has_many :giftboxes, through: :purchased_boxes
    validates :username, uniqueness: true
    has_secure_password
    has_secure_token :auth_token

    #Login/authentication
    def self.validate_login(username, password)
        user = find_by(username: username)
        if user && user.authenticate(password)
            user
        end
    end

    #Logout
    def invalidate_token
        self.update(auth_token: nil)
    end
end