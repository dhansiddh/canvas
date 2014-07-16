require "java"
import java.awt.Color

require_relative "application/canvas"
require_relative "application/line"

class Application
end
canvas = Canvas.new
Line.new(10,20,50,60,Color.black).draw canvas
Line.new(150,200,200,300,Color.blue).draw canvas