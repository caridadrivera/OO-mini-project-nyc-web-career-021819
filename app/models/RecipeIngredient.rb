class RecipeIngredient

  attr_accessor :recipe, :ingredient

  @@all =[]

  def initialize(recipe, ingredient)
    @recipe = recipe
    @ingredients = ingredient
    @@all << self
  end

  def self.all
    @@all
  end

  end
