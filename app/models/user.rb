class User < ApplicationRecord
  has_many :car_rentals
  has_many :owners, through: :car_rentals

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
