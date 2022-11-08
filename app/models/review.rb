class Review < ActiveRecord::Base
  belongs_to :users
  belongs_to :products

  def user
    self.user
  end

  def product
    self.product
  end

  def print_review
    puts "Review for #{self.product.name} by #{self.user.name}: #{self.review.star_rating}. #{self.review_comment}"
  end

end
