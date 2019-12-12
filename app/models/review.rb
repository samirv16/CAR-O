class Review < ApplicationRecord

    belongs_to :car_rental
    belongs_to :user

    validates :comment, presence: true
    validates :rating, presence: true

end
