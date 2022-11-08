class User < ActiveRecord::Base
   has_many :reviews
   has_many :products through :reviews

   def initialize (name)
    @name =  name
   end

   def reviews
      self.reviews
   end

   def products
      self.products
   end

end
