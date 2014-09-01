class User < ActiveRecord::Base
  has_secure_password

  validates :email, presence: true, uniqueness: true

  has_many :products
  has_many :reviews
  has_many :likes
end
