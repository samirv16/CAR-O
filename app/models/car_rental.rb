class CarRental < ApplicationRecord
    belongs_to :owner
    belongs_to :user, optional: true

end
