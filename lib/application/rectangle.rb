#It draws rectangle for given coordinates
class Rectangle
  attr_reader :text , :x1, :y1, :height, :width

  def initialize x1, y1, width, height, color, text = nil
    @x1 = x1
    @y1 = y1
    @width = width
    @height = height
    @text = text
    @color = color
    @lines = [Line.new(x1, y1, x1, y1+height, Color.white), Line.new(x1, y1+height, x1+width, y1+height, Color.black),
              Line.new(x1+width, y1+height, x1+width, y1, Color.black), Line.new(x1+width, y1, x1, y1, Color.white)]

  end

  def render graphics
    graphics.setColor Color.black
    graphics.drawString(@text, @x1+ @width/2, @y1+@height/2)
   #   if mouse_state
   #    graphics.setColor Color.black
   #    graphics.drawLine @lines[0].x1, @lines[0].y1, @lines[0].x2, @lines[0].y2
   #    graphics.drawLine @lines[3].x1, @lines[3].y1, @lines[3].x2, @lines[3].y2
   #    graphics.setColor Color.white
   #    graphics.drawLine @lines[1].x1, @lines[1].y1, @lines[1].x2, @lines[1].y2
   #    graphics.drawLine @lines[2].x1, @lines[2].y1, @lines[2].x2, @lines[2].y2
   #  else
      @lines.each { |line|
        graphics.setColor line.color
        graphics.drawLine line.x1, line.y1, line.x2, line.y2 }
    end


  def isClicked? click_x, click_y
    if click_x > @x1 && click_x < @x1 + @width && click_y > @y1 && click_y < @y1 + @height
      return true
    else
      return false
    end
  end
  end
