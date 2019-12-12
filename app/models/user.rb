class User < ApplicationRecord
  has_many :car_rentals
  has_many :owners, through: :car_rentals
  has_many :reviews

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,

         :omniauthable, omniauth_providers: [:google_oauth2]

          def self.from_omniauth(auth)
            where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
              user.provider = auth.provider
              user.uid = auth.uid
              user.email = auth.info.email
              user.password = Devise.friendly_token[0,20]
            end
        end

end
