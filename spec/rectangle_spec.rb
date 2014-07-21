require 'spec_helper'

describe 'Rectangle' do

  it 'should render a rectangle' do
    graphics = double("graphics")
    rectangle = Rectangle.new(100, 100, 20, 40, Color.red, "some text")
    expect(graphics).to receive(:setColor).with(Color.red).exactly(4).times
    allow(graphics).to receive(:drawString).with("some text", 110, 120)
    allow(graphics).to receive(:drawLine).with(100, 100, 100, 140)
    allow(graphics).to receive(:drawLine).with(120, 100, 100, 100)
    allow(graphics).to receive(:drawLine).with(100, 140, 120, 140)
    allow(graphics).to receive(:drawLine).with(120, 140, 120, 100)
    rectangle.render(graphics)
  end

  it 'is true if clicked inside the rectangle' do
    graphics = double("graphics")
    rectangle = Rectangle.new(100, 100, 20, 40, Color.red,"some text")
    allow(graphics).to receive(:setColor).with(Color.red).exactly(4).times
    allow(graphics).to receive(:drawString).with("some text", 110, 120)
    allow(graphics).to receive(:drawLine).with(100, 100, 100, 140)
    allow(graphics).to receive(:drawLine).with(120, 100, 100, 100)
    allow(graphics).to receive(:drawLine).with(100, 140, 120, 140)
    allow(graphics).to receive(:drawLine).with(120, 140, 120, 100)
    rectangle.render(graphics)
    expect(rectangle.isClicked?(110, 120)).to be_truthy
  end
end