class CreateGiftboxbooks < ActiveRecord::Migration[6.0]
  def change
    create_table :giftboxbooks do |t|
      t.references :book, null: false, foreign_key: true
      t.references :giftbox, null: false, foreign_key: true

      t.timestamps
    end
  end
end