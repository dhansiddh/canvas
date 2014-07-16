require "java"
import java.awt.Color

require_relative "application/canvas"
require_relative "application/line"
require_relative "application/rectangle"

class Application
end
canvas = Canvas.new
#Line.new(10,20,50,60,Color.black).draw canvas
Rectangle.new(40,60,20,30,Color.blue).draw canvas
#Line.new(150,200,200,300,Color.blue).draw canvas