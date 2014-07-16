puts "#{RUBY_PLATFORM}"
class Canvas < javax.swing.JPanel
  attr_reader :lines
  def initialize
    super
    @shapes = []
    @frame = javax.swing.JFrame.new("Canvas")
    @frame.setDefaultCloseOperation(javax.swing.JFrame::EXIT_ON_CLOSE)
    @frame.setSize(800, 600)
    @frame.setVisible(true)
    @frame.add(self)
    @frame.validate
    @frame.repaint
  end


  def paintComponent(graphics)
    super(graphics)
    paint graphics
  end
  def add_shape shape
    @shapes << shape
  end
  def render
    @frame.repaint
  end
  def paint graphics
    @shapes.each { |shape|
    shape.render graphics}
  end
end


