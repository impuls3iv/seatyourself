class Restaurant < ActiveRecord::Base
  has_many :users, through: :reservations
  has_many :reservations
  has_many :searches

  def self.search(search)
    if search
      where(["name LIKE ?", "%#{search}%"])
    else
      all
    end
  end

end
