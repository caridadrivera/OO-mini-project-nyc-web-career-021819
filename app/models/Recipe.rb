require 'pry'

class Recipe

attr_accessor :name

@@all =[]

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def all_recipes
  RecipeCard.all.select do |recipecard|
    recipecard.recipe == self
  end
end

def self.most_popular
  Recipe.all.max_by do |recipe|
    RecipeCard.all.select |card|
    card.recipe == recipe
  end.count
  end
end

def users
  self.all_recipes.map do |recipe|
    recipe.users
  end
end

def ingredients
  ingredient_list = RecipeIngredient.all.select do |rec_ing|
      rec_ing.recipe == self
    end
    ingredient_list .map do |recipe|
        recipe.ingredient
      end
end

def add_ingredients(ingredients)
    ingredients.each do |ingredient|
       RecipeIngredient.new(self, ingredient)
     end
  end
