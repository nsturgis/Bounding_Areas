class BoundingBox
  attr_reader :left, :bottom, :width, :height

  def initialize (left, bottom, width , height)
    @left = left
    @bottom = bottom
    @height = height
    @width = width
  end

  def right
    width + left
  end

  def top
    bottom + height
  end

  def contains_point?(x, y)
    if x >= left && x <= right && y >= bottom && y <= top
      return true
    else
      return false
    end
  end
end
