class User < ApplicationRecord
    has_many :purchased_boxes
    has_many :giftboxes, through: :purchased_boxes
end