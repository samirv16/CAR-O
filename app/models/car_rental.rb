class CarRental < ApplicationRecord
    belongs_to :owner
    belongs_to :user, optional: true
    has_many :reviews

    validates :make, presence: true
    validates :model, presence: true
    validates :rate, presence: true

    scope :best_reviews, -> { where('rating > ?', 3) }

end
