class AddRentalDateToCarRentals < ActiveRecord::Migration[6.0]
  def change
    add_column :car_rentals, :rental_date, :datetime
  end
end
