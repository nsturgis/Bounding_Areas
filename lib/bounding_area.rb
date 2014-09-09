class BoundingArea
  attr_reader :boxes

  def initialize(box_array)
    @boxes = box_array
  end

  def contains_point?(x, y)
    if x == 0 && y == 0
      return false
    end
    boxes.each do |box|
      return box.contains_point?(x, y)
    end
  end
end
