puts "#{RUBY_PLATFORM}"
class Canvas < javax.swing.JPanel
  attr_reader :shapes , :frame
  def initialize
    super
    @shapes = []
    @frame = javax.swing.JFrame.new("Canvas")
    @frame.setDefaultCloseOperation(javax.swing.JFrame::EXIT_ON_CLOSE)
    @frame.setSize(800, 600)
    @frame.setVisible(true)
    @frame.add(self)
  end


  def paintComponent(graphics)
    super(graphics)
    paint graphics
  end

  def add_shape shape
    @shapes << shape
    @frame.validate
    @frame.repaint
  end

  def paint graphics
    @shapes.each { |shape|
      shape.render graphics
    }
  end
end


