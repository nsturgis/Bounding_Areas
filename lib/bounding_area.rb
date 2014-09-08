require 'pry'
class BoundingArea
  def initialize(box_array)
    @box = box_array
  end

  def contains_point?(x, y)
    if x == 0 && y == 0
      return false
    end
    @box.each do |row|
      return row.contains_point?(x, y)
    end
  end
end

