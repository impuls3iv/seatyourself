class Search < ActiveRecord::Base

  CLASS_PEOPLE = ["1 Person","2 People","3 People", "4 People", "5 People"]

  CLASS_HOUR = ["12pm", "1pm", "2pm", "3pm", " 4pm", "5pm"]

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
