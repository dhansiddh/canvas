#simulates a button
class Button

  def initialize shape
    @shape = shape
  end

  def render graphics,mouse_state
    @shape.render graphics,mouse_state
  end

  def receive_click click_x,click_y
    if @shape.isClicked? click_x , click_y
      puts "clicked on #{@shape.text}"
      true
    else
      false
    end

  end
end