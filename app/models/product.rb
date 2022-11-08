class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

    def leave_review(user, rating, comment)
        review = Review.create(star_rating: rating, comment: comment, user: user)
    end

    def print_all_reviews
        puts "Review for #{self.product.name} by #{self.product.user.name}: #{self.product.review.star_rating}. #{self.product.review.comment}"
    end

    def average_rating
        average = []
        self.product.reviews.each do |review|
            average.push(review.rating)
        end


    end
end
