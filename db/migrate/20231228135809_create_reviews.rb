class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.string :restaurant_name, null: false
      t.date :review_date, null: false
      t.text :review_body, null: false
      t.integer :tenderloin_rating, null: false
      t.integer :sides_rating, null: false
      t.integer :menu_rating, null: false
      t.integer :price_rating, null: false
      t.integer :decor_rating, null: false
      t.integer :service_rating, null: false
      t.integer :total_rating, null: false
      t.string :image, default: 'https://dingolayhotsauce.com/wp-content/uploads/2022/04/50-930x620.png'

      t.timestamps
    end
  end
end
