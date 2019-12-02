class CreateCarRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :car_rentals do |t|
      t.string :review
      t.string :make
      t.string :model
      t.float :rate
      t.integer :owner_id
      t.integer :user_id

      t.timestamps
    end
  end
end
