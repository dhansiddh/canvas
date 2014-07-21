#give 3d look
class Button3d
  def initialize shape
    @shape = shape
  end

  def render graphics,mouse_state
    @shape.render graphics,mouse_state
  end

  def pressed shape
    if @shape.isClicked? click_x , click_y
      puts "clicked on #{@shape.text}"
      true
    else
      false
    end

  end
end