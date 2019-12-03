class Owner < ApplicationRecord
    has_many :car_rentals
    has_many :users, through: :car_rentals

end
