class Book < ApplicationRecord
    has_many :giftboxbooks
    has_many :giftboxes, through: :giftboxbooks
end
