class CreatePurchasedBoxes < ActiveRecord::Migration[6.0]
  def change
    create_table :purchased_boxes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :giftbox, null: false, foreign_key: true

      t.timestamps
    end
  end
end