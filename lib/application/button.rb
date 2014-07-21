#simulates a button
class Button

  def initialize shape
    @shape = shape
  end

  def render graphics
    @shape.render graphics
  end

  def receive_click click_x,click_y
    if @shape.isClicked? click_x , click_y
      puts "clicked on #{@shape.text}"
      true
    else
      false
    end

  end

  def released click_x,click_y, canvas
    if @shape.isClicked? click_x , click_y
      puts "hello"
      canvas.buttons.pop(4)
      canvas.event_listner

    else
      false
    end
  end


  def pressed click_x,click_y, canvas
    if @shape.isClicked? click_x , click_y
      button1 = Button.new(Line.new(@shape.x1,@shape.y1,@shape.x1 + @shape.width,@shape.y1,Color.black))
      button2 = Button.new(Line.new(@shape.x1,@shape.y1,@shape.x1,@shape.y1 + @shape.height,Color.black))
      button3 = Button.new(Line.new(@shape.x1,@shape.y1 + @shape.height,@shape.x1 + @shape.width,@shape.y1 + @shape.height,Color.white))
      button4 = Button.new(Line.new(@shape.x1 + @shape.width,@shape.y1 + @shape.height,@shape.x1 + @shape.width,@shape.y1,Color.white))
      canvas.add_button(button1)
      canvas.add_button(button2)
      canvas.add_button(button3)
      canvas.add_button(button4)

      true
    else
      false
    end

  end
end