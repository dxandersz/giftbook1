class PurchasedBox < ApplicationRecord
    belongs_to :user
    belongs_to :giftbox
  end