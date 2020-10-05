class Giftbox < ApplicationRecord
    has_many :giftboxbooks
    has_many :books, through: :giftboxbooks
    has_many :purchased_boxes
    has_many :users, through: :purchased_boxes
end
