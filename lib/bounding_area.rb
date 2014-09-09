class BoundingArea
  attr_reader :boxes

  def initialize(box_array)
    @boxes = box_array
  end

  def contains_point?(x, y)
    boxes.each do |box|
      return true if box.contains_point?(x, y)
    end
    false
  end
end
