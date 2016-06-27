class User < ActiveRecord::Base
  has_secure_password
  validates :username, presence: true
  validates :email, presence: true

  validates_uniqueness_of :username, :email
  has_many :restaurants, through: :reservations
  has_many :reservations

end
