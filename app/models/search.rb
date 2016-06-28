class Search < ActiveRecord::Base

  # Control on date for past date
  validate :not_past_date

  def not_past_date
    if self.time < Date.today
      errors.add(:time, 'not in past')
    end
  end

  def search_restaurants

    restaurants = Restaurant.all

    restaurants = restaurants.where(["capacity >= ?", people]) if people.present?
    restaurants = restaurants.where(["category LIKE ?", category]) if category.present?
    restaurants = restaurants.where(["price >= ?", min_price]) if min_price.present?
    restaurants = restaurants.where(["price <= ?", max_price]) if max_price.present?
    restaurants = restaurants.where(["city LIKE ?", location]) if location.present?

    return restaurants

  end
end
