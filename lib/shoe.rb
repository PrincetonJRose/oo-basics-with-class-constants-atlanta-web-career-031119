require "pry"

class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

BRANDS = []

  def initialize(brand)
    @brand = brand
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  def brand=(brand)
    binding.pry
    if BRANDS.include?(brand) == false
      BRANDS << brand
    end
  end

end
