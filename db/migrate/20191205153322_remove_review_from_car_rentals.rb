class RemoveReviewFromCarRentals < ActiveRecord::Migration[6.0]
  def change

    remove_column :car_rentals, :review, :string
  end
end
