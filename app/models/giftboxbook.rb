class Giftboxbook < ApplicationRecord
    belongs_to :book
    belongs_to :giftbox
  end
  