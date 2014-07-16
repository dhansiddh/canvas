require 'spec_helper'

describe 'Rectangle' do

  it 'should render a rectangle' do
    graphics = double("graphics")
    rectangle = Rectangle.new(100,100,20,40,Color.red)
    expect(graphics).to receive(:setColor).with(Color.red).exactly(4).times
    expect(graphics).to receive(:drawLine).with(100,100,100,60)
    expect(graphics).to receive(:drawLine).with(100,60,120,60)
    expect(graphics).to receive(:drawLine).with(120,60,120,100)
    expect(graphics).to receive(:drawLine).with(120,100,100,100)
    rectangle.render(graphics)
  end
end