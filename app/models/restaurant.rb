class Restaurant < ActiveRecord::Base
  has_many :reviews
  has_many :customers, through: :reviews

  def fanciest
    Restaurant.order(:price).last
  end

  def all_reviews
    arr = []
    self.reviews.map { |review| arr << review.full_review }
    arr
  end
end
