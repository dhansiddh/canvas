require 'spec_helper'

describe 'Canvas' do

  let(:canvas) {
    Canvas.new()
  }
  let (:line) {
    Line.new( 0, 0, 100, 100 ,Color.red,)
  }

  let (:rectangle) {
    Rectangle.new(100, 100, 20 , 40, Color.red ,"Some text")
  }

  it 'it add a line the canvas' do
    frame = double("Frame")
    allow(frame).to receive(:setDefaultCloseOperation).with(javax.swing.JFrame::EXIT_ON_CLOSE)
    allow(frame).to receive(:setSize).with(800, 600)
    allow(frame).to receive(:setVisible).with(true)
    allow(frame).to receive(:add).with(any_args)
    allow(frame).to receive(:validate)
    allow(frame).to receive(:repaint)
    allow(frame).to receive(:addMouseListener).with(any_args)
    allow(javax.swing.JFrame).to receive(:new).and_return(frame)
    button = Button.new(line)
    canvas.add_button(button)
    expect(canvas.buttons).to eq([button])
  end

  it 'it add a rectangle the canvas' do
    frame = double("Frame")
    allow(frame).to receive(:setDefaultCloseOperation).with(javax.swing.JFrame::EXIT_ON_CLOSE)
    allow(frame).to receive(:setSize).with(800, 600)
    allow(frame).to receive(:setVisible).with(true)
    allow(frame).to receive(:add).with(any_args)
    allow(frame).to receive(:validate)
    allow(frame).to receive(:repaint)
    allow(frame).to receive(:addMouseListener).with(any_args)
    allow(javax.swing.JFrame).to receive(:new).and_return(frame)
    button = Button.new(rectangle)
    canvas.add_button(button)
    expect(canvas.buttons).to eq([button])
  end

  it 'should repaint the canvas ' do
    frame = double("Frame")
    allow(javax.swing.JFrame).to receive(:new).and_return(frame)
    allow(frame).to receive(:setDefaultCloseOperation).with(javax.swing.JFrame::EXIT_ON_CLOSE)
    allow(frame).to receive(:setSize).with(800, 600)
    allow(frame).to receive(:setVisible).with(true)
    allow(frame).to receive(:add).with(any_args)
    allow(frame).to receive(:validate)
    allow(frame).to receive(:addMouseListener).with(any_args)
    allow(frame).to receive(:repaint)
    expect(frame).to receive(:repaint)
    button = Button.new(rectangle)
    canvas.add_button button
  end

  it 'paints a line on canvas ' do
    frame = double("Frame")
    allow(frame).to receive(:setDefaultCloseOperation).with(javax.swing.JFrame::EXIT_ON_CLOSE)
    allow(frame).to receive(:setSize).with(800, 600)
    allow(frame).to receive(:setVisible).with(true)
    allow(frame).to receive(:add).with(any_args)
    allow(frame).to receive(:validate)
    allow(frame).to receive(:repaint)
    allow(frame).to receive(:addMouseListener).with(any_args)
    allow(javax.swing.JFrame).to receive(:new).and_return(frame)
    graphics = double("graphics")
    button = Button.new(line)
    canvas.add_button(button)
    expect(graphics).to receive(:setColor).with(Color.red)
    expect(graphics).to receive(:drawLine).with(0, 0, 100, 100)
    canvas.render(graphics)
  end

  it 'paints a rectangle on canvas ' do
    frame = double("Frame")
    allow(frame).to receive(:setDefaultCloseOperation).with(javax.swing.JFrame::EXIT_ON_CLOSE)
    allow(frame).to receive(:setSize).with(800, 600)
    allow(frame).to receive(:setVisible).with(true)
    allow(frame).to receive(:add).with(any_args)
    allow(frame).to receive(:validate)
    allow(frame).to receive(:repaint)
    allow(frame).to receive(:addMouseListener).with(any_args)
    allow(javax.swing.JFrame).to receive(:new).and_return(frame)
    graphics = double("graphics")
    button = Button.new(rectangle)
    canvas.add_button(rectangle)
    expect(graphics).to receive(:drawString).with("Some text",110,120)
    expect(graphics).to receive(:setColor).with(Color.red).exactly(4).times
    expect(graphics).to receive(:drawLine).with(100,100,100,140)
    expect(graphics).to receive(:drawLine).with(100,140,120,140)
    expect(graphics).to receive(:drawLine).with(120,140,120,100)
    expect(graphics).to receive(:drawLine).with(120,100,100,100)
    canvas.render(graphics)
  end

  it 'initializes a canvas with frame' do
    frame = double("Frame")
    allow(frame).to receive(:setDefaultCloseOperation).with(javax.swing.JFrame::EXIT_ON_CLOSE)
    allow(frame).to receive(:setSize).with(800, 600)
    allow(frame).to receive(:setVisible).with(true)
    allow(frame).to receive(:add).with(any_args)
    allow(frame).to receive(:addMouseListener).with(any_args)
    allow(frame).to receive(:validate)
    allow(frame).to receive(:repaint)
    allow(javax.swing.JFrame).to receive(:new).and_return(frame)
    Canvas.new
  end
end