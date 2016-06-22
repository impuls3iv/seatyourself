class User < ActiveRecord::Base
  has_many :restaurants, through: :reservations
  has_many :reservations

end
