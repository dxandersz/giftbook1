class CreateGiftboxes < ActiveRecord::Migration[6.0]
  def change
    create_table :giftboxes do |t|
      t.string :organization
      t.string :category
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
