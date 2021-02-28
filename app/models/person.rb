class Person < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :phone, length: { is: 11 }, allow_nil: true
  validates :post_code, length: { is: 5 }, allow_nil: true
  
  has_many :shops, dependent: :destroy
  has_many :packs, through: :shops
end
