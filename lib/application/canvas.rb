#renders the building blocks
puts "#{RUBY_PLATFORM}"
class Canvas < javax.swing.JPanel
  include java.awt.event.MouseListener

  attr_reader :buttons, :frame

  def initialize
    super
    @buttons = []
    @mouse_state = false
    @frame = javax.swing.JFrame.new("Canvas")
    @frame.setDefaultCloseOperation(javax.swing.JFrame::EXIT_ON_CLOSE)
    @frame.setSize(800, 600)
    @frame.setVisible(true)
    @frame.addMouseListener(self)
    @frame.add(self)
  end


  def paintComponent(graphics)
    super(graphics)
    render graphics
  end

  def add_button button
    @buttons << button
    @frame.validate
    @frame.repaint
  end

  def mouseEntered(javaEvent)
  end

  def mouseExited(javaEvent)
  end

  def mousePressed(javaEvent)
    offset = 20
    @buttons.each { |button|
      if button.pressed javaEvent.getX, javaEvent.getY - offset, self
      end
    }
  end

  def mouseReleased(javaEvent)
    offset = 20
    @buttons.each { |button|
      if button.released javaEvent.getX, javaEvent.getY - offset, self
      end
    }
  end

  def mouseClicked(javaEvent)
    offset = 20
    puts "Click: #{javaEvent.getX} #{javaEvent.getY - offset}"
    @buttons.each { |button|
      button.receive_click javaEvent.getX, javaEvent.getY - offset

    }
  end

  def render graphics
    @buttons.each { |button|
      button.render graphics
    }
  end

  def event_listner
    puts "i m inside event_listen"
    @frame.validate
    @frame.repaint
  end

end


