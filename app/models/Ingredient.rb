
class Ingredient

attr_accessor :name

@@all =[]

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def self.most_common_allergen
    @@all.max_by do |ingredient|
      Allergen.all.select { |allergen| allergen.ingredient == ingredient }.count
    end
  end

end
