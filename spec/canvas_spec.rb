require 'spec_helper'

describe 'Canvas' do

  let(:canvas) {
    Canvas.new()
  }
  let (:line) {
    Line.new( 0, 0, 100, 100 ,Color.red,)
  }

  let (:rectangle) {
    Rectangle.new(100, 100, 20 , 40, Color.red)
  }

  it 'it add a line the canvas' do
    frame = double("Frame")
    allow(frame).to receive(:setDefaultCloseOperation).with(javax.swing.JFrame::EXIT_ON_CLOSE)
    allow(frame).to receive(:setSize).with(800, 600)
    allow(frame).to receive(:setVisible).with(true)
    allow(frame).to receive(:add).with(any_args)
    allow(frame).to receive(:validate)
    allow(frame).to receive(:repaint)
    allow(javax.swing.JFrame).to receive(:new).and_return(frame)
    canvas.add_shape(line)
    expect(canvas.shapes).to eq([line])
  end

  it 'it add a rectangle the canvas' do
    frame = double("Frame")
    allow(frame).to receive(:setDefaultCloseOperation).with(javax.swing.JFrame::EXIT_ON_CLOSE)
    allow(frame).to receive(:setSize).with(800, 600)
    allow(frame).to receive(:setVisible).with(true)
    allow(frame).to receive(:add).with(any_args)
    allow(frame).to receive(:validate)
    allow(frame).to receive(:repaint)
    allow(javax.swing.JFrame).to receive(:new).and_return(frame)
    canvas.add_shape(rectangle)
    expect(canvas.shapes).to eq([rectangle])
  end

  it 'should repaint the canvas ' do
    frame = double("Frame")
    allow(javax.swing.JFrame).to receive(:new).and_return(frame)
    allow(frame).to receive(:setDefaultCloseOperation).with(javax.swing.JFrame::EXIT_ON_CLOSE)
    allow(frame).to receive(:setSize).with(800, 600)
    allow(frame).to receive(:setVisible).with(true)
    allow(frame).to receive(:add).with(any_args)
    allow(frame).to receive(:validate)
    allow(frame).to receive(:repaint)
    expect(frame).to receive(:repaint)
    canvas.add_shape line
  end

  it 'paints a line on canvas ' do
    frame = double("Frame")
    allow(frame).to receive(:setDefaultCloseOperation).with(javax.swing.JFrame::EXIT_ON_CLOSE)
    allow(frame).to receive(:setSize).with(800, 600)
    allow(frame).to receive(:setVisible).with(true)
    allow(frame).to receive(:add).with(any_args)
    allow(frame).to receive(:validate)
    allow(frame).to receive(:repaint)
    allow(javax.swing.JFrame).to receive(:new).and_return(frame)
    graphics = double("graphics")
    canvas.add_shape(line)
    expect(graphics).to receive(:setColor).with(Color.red)
    expect(graphics).to receive(:drawLine).with(0, 0, 100, 100)
    canvas.paint(graphics)
  end

  it 'paints a rectangle on canvas ' do
    frame = double("Frame")
    allow(frame).to receive(:setDefaultCloseOperation).with(javax.swing.JFrame::EXIT_ON_CLOSE)
    allow(frame).to receive(:setSize).with(800, 600)
    allow(frame).to receive(:setVisible).with(true)
    allow(frame).to receive(:add).with(any_args)
    allow(frame).to receive(:validate)
    allow(frame).to receive(:repaint)
    allow(javax.swing.JFrame).to receive(:new).and_return(frame)
    graphics = double("graphics")
    canvas.add_shape(rectangle)
    expect(graphics).to receive(:setColor).with(Color.red).exactly(4).times
    expect(graphics).to receive(:drawLine).with(100,100,100,60)
    expect(graphics).to receive(:drawLine).with(100,60,120,60)
    expect(graphics).to receive(:drawLine).with(120,60,120,100)
    expect(graphics).to receive(:drawLine).with(120,100,100,100)
    canvas.paint(graphics)
  end

  it 'initializes a canvas with frame' do
    frame = double("Frame")
    allow(frame).to receive(:setDefaultCloseOperation).with(javax.swing.JFrame::EXIT_ON_CLOSE)
    allow(frame).to receive(:setSize).with(800, 600)
    allow(frame).to receive(:setVisible).with(true)
    allow(frame).to receive(:add).with(any_args)
    allow(frame).to receive(:validate)
    allow(frame).to receive(:repaint)
    allow(javax.swing.JFrame).to receive(:new).and_return(frame)
    Canvas.new
  end
end