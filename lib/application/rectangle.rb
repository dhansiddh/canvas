#It draws rectangle for given coordinates
class Rectangle
  def initialize x1,y1,width,height,color
  @lines = [Line.new(x1,y1,x1,y1-height,color),Line.new(x1,y1-height,x1+width,y1-height,color),
            Line.new(x1+width,y1-height,x1+width,y1,color),Line.new(x1+width,y1,x1,y1,color)]
  end
  def draw canvas
    canvas.add_shape self
    canvas.render
  end
  def render graphics
    @lines.each { |line|
      graphics.setColor line.color
      graphics.drawLine line.x1,line.y1,line.x2,line.y2}
  end
end