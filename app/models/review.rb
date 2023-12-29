class Review < ApplicationRecord
    validates :restaurant_name, presence: true
    validates :review_date, presence: true
    validates :review_body, presence: true
    validates :tenderloin_rating, presence: true
    validates :sides_rating, presence: true
    validates :menu_rating, presence: true
    validates :price_rating, presence: true
    validates :decor_rating, presence: true
    validates :service_rating, presence: true
    validates :total_rating, presence: true
    validates :image, presence: true

    has_many :comment
end
