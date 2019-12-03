class CarRental < ApplicationRecord
    belongs_to :owner
    belongs_to :users

end
