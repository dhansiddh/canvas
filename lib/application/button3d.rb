#give 3d look
class Button3d
  def initialize shape
    @shape = shape
  end

  def render graphics,mouse_state
    @shape.render graphics,mouse_state

  end


end