class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :heading
      t.string :bullet1
      t.string :bullet2
      t.string :bullet3
      t.decimal :price
      t.string :amazon_url
      t.string :image_url
      t.string :review_url
      t.string :additional_info
      t.string :care_instructions

      t.timestamps null: false
    end
  end
end
