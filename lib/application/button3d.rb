#give 3d look
class Button3d
  def initialize shape
    @shape = shape
  end

  def render graphics, mouse_state
    @shape.render graphics, mouse_state

  end

  def draw


   [[Line.new(@shape.x1, @shape.y1, @shape.x1 + @shape.width, @shape.y1, Color.black)],
    [Line.new(@shape.x1, @shape.y1, @shape.x1, @shape.y1 + @shape.height, Color.black)],
    [Line.new(@shape.x1, @shape.y1 + @shape.height, @shape.x1 + @shape.width, @shape.y1 + @shape.height, Color.white)],
    [Line.new(@shape.x1 + @shape.width, @shape.y1 + @shape.height, @shape.x1 + @shape.width, @shape.y1, Color.white)]]


  end

end