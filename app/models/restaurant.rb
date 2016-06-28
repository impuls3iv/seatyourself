class Restaurant < ActiveRecord::Base
  validates :name, :address, :city, :capacity, :open_hour, :close_hour, presence: true

  has_many :users, through: :reservations
  has_many :reservations
  belongs_to :user
  has_many :searches

  def self.search(search)
    if search
      where(["name LIKE ?", "%#{search}%"])
    else
      all
    end
  end


end
