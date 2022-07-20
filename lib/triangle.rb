require 'pry'

class Triangle

  attr_accessor :side_one, :side_two, :side_three

  def initialize (side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    check_triangle

    if side_one == side_two && side_two == side_three
      :equilateral

    elsif side_one == side_two && side_two != side_three  || side_one == side_three && side_three != side_two || side_two == side_three && side_three != side_one
      :isosceles
    else
      :scalene
    end
  end

  def has_size?
    if side_one && side_two && side_three > 0
      true
    else
      false
    end
  end

  def check_triangle
    raise TriangleError unless has_size? && triangle_inequality?
  end

  def triangle_inequality?
    if side_one + side_two > side_three && side_one + side_three > side_two && side_two + side_three > side_one
      true
    else
      false
    end
  end


  class TriangleError < StandardError
  end

end

t1= Triangle.new(10,6,4)





