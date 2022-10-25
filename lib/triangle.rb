class Triangle
  # triangle code
  attr_reader :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
        valid_triangle
        
        if side_1 == side_2 && side_2 == side_3
          :equilateral
          
        
        elsif side_1 == side_2 || side_2 == side_3 || side_1 == side_3
          :isosceles
        else
        :scalene
      end
  end

  def more_than_zero?
    [side_1, side_2, side_3].all?(&:positive?)
  end

    def triangle_inequal?
      side_1 + side_2 > side_3 && side_1 + side_3 > side_2 && side_2+side_3 > side_1
    end

    def valid_triangle
      raise TriangleError unless more_than_zero? && triangle_inequal?
    end





  class TriangleError < StandardError
    # triangle error code


  end
end