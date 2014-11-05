class SquarePeg
  attr_reader :width
  def initialize(width)
    @width = width
  end
end

class RoundPeg
  attr_reader :radius
  def initialize(radius)
    @radius = radius
  end
end

class RoundHole
  attr_reader :radius
  def initialize(radius)
    @radius = radius
  end

  def peg_fits?(peg)
    peg.radius <= radius
  end
end

class SquarePegAdaptor
  def initialize(square_peg)
    @peg = square_peg
  end

  def radius
    Math.sqrt(((@peg.width / 2) ** 2) * 2)
  end
end
