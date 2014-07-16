require "java"
import java.awt.Color

require_relative "application/canvas"
require_relative "application/line"
require_relative "application/rectangle"

class Application
  def initialize
    canvas = Canvas.new
    canvas.add_shape Line.new(10,20,50,60,Color.black)
    canvas.add_shape Rectangle.new(40,60,20,30,Color.blue)
    canvas.add_shape Line.new(150,200,200,300,Color.blue)
  end
end
