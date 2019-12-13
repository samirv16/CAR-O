class Review < ApplicationRecord

    belongs_to :car_rental
    belongs_to :user

    validates :comment, presence: true
    validates :rating, presence: true

    scope :best_reviews, -> { where("rating > ?", 3) }

end
