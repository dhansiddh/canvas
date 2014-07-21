#simultes the application
require "java"
require_relative "application/canvas"
require_relative "application/line"
require_relative "application/rectangle"
require_relative "application/button"
import java.awt.Color

class Application
  def initialize
    canvas = Canvas.new
    #canvas.add_button Button.new(Line.new(10,20,50,60,Color.black))
    canvas.add_button Button.new(Rectangle.new(20,20,200,400,Color.blue,"Click me"))
    canvas.add_button Button.new(Rectangle.new(300,200,200,400,Color.blue,"what??"))
    #canvas.add_shape Line.new(150,200,200,300,Color.blue)
  end
end
