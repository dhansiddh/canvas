puts "#{RUBY_PLATFORM}"
class Canvas < javax.swing.JPanel
  attr_reader :lines
  def initialize
    super
    @lines = []
    @frame = javax.swing.JFrame.new("Canvas")
    @frame.setDefaultCloseOperation(javax.swing.JFrame::EXIT_ON_CLOSE)
    @frame.setSize(800, 600)
    @frame.setVisible(true)
    #@frame.add(self)
    @frame.validate
    @frame.repaint
  end


  def paintComponent(graphics)
    super(graphics)
    paint graphics


  end

  def add line
    @lines << line
  end
  def render
    @frame.repaint
  end
  def paint graphics
    @lines.each { |line| graphics.drawLine line.x1,line.x2,line.y1,line.y2}
    @lines.each { |line| graphics.setColor line.color}
  end
end


