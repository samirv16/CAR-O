class CarRental < ApplicationRecord
    belongs_to :owner
    belongs_to :user, optional: true
    has_many :reviews

end
