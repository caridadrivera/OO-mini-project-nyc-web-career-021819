require_relative '../config/environment.rb'
require "pry"
require "date"


#
# def initialize(recipes, allergens)
the_cook1 = User.new("teresa")
the_cook2 = User.new("john")
the_cook3 = User.new("julio")

#Recipeclass
# initialize(users, ingredients, allergens)
recipe1 = Recipe.new("chicken and alfredo")
recipe2 = Recipe.new("lobster and butter")
recipe3 = Recipe.new("spaghetti and sauce")


#RecipeCard
# def initialize(date, rating, user, recipe)

r_c1 = RecipeCard.new('2019-02-01', 4, the_cook1, recipe1)
r_c1 = RecipeCard.new('2018-03-18', 3, the_cook1, recipe1)
r_c1 = RecipeCard.new('2019-10-10', 9, the_cook1, recipe1)
r_c2 = RecipeCard.new('2018-10-05', 3, the_cook2, recipe2)
r_c3 = RecipeCard.new('2019-02-05', 5, the_cook3, recipe3)
r_c4 = RecipeCard.new('2019-02-23', 1, the_cook1, recipe2)

binding.pry

0
