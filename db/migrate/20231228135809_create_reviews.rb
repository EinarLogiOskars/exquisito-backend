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
      t.string :image, default: 'https://images.unsplash.com/photo-1565299715199-866c917206bb?q=80&w=2880&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'

      t.timestamps
    end
  end
end
