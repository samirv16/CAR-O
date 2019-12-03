class Owner < ApplicationRecord
    has_many :cars
    has_many :users, through: :car_rentals

end
