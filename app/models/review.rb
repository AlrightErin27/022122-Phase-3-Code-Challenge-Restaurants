class Review < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :customer

  def full_review
    "Review for #{restaurant.name} by #{customer.full_name}: #{self.star_rating}"
  end
end
