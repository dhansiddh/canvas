require 'spec_helper'

describe 'Button' do

  it 'is true if clicked inside the rectangle' do
   rectangle = Rectangle.new(0,0,200,400,Color.blue,"SD ka code")
   button = Button.new(rectangle)
   expect(button.receive_click(110,120)).to be_truthy
  end

  it 'is false if clicked outside the rectangle' do
    rectangle = Rectangle.new(0,0,200,400,Color.blue,"SD ka code")
    button = Button.new(rectangle)
    expect(button.receive_click(500,500)).to be_falsey
  end
end