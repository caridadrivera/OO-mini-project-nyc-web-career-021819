require 'date'

class RecipeCard

attr_accessor :date, :rating, :user, :recipe

@@all =[]

def initialize(date, rating, user, recipe)
  @date = Date.parse(date)
  @rating = rating
  @user = user
  @recipe = recipe
  @@all << self
end

def self.all
  @@all
end

end
