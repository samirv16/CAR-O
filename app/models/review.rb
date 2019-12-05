class Review < ApplicationRecord

    belongs_to :car_rental
    belongs_to :user

end
