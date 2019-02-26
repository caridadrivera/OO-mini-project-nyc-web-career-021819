
require 'date'

class User
attr_accessor :name

@@all =[]

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def recipe_cards
  RecipeCard.all.select do |rc|
    rc.user == self
  end
end


def recipes
  self.recipe_cards.map do |rc|
    rc.recipe
  end
end


def add_recipe_card(date, rating, recipe)
  RecipeCard.new(date, rating, self, recipe)
end

def declare_allergen(ingredient)
  Allergen.new(self, ingredient)
end

def top_three_recipes
  sorted = self.recipe_cards.sort_by do |rc|
    rc.rating
  end
  sorted.reverse.first(3).map do |rc|
    rc.recipe
  end
end

def most_recent_recipe
  self.recipe_cards.sort_by do |rc|
    rc.date
  end.last
end

def allergens
the_allergens = Allergens.all.select do |allergen|
    allergen.user == self
  end
the_allergen.map do |allergen|
  allergen.ingredient
end
end

end
