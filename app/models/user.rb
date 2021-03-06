class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :activities
  has_many :bookings
  has_one_attached :photo
  belongs_to :area
  validates :area, presence: true
  validates :username, presence: true, uniqueness: true
end
