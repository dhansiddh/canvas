require 'spec_helper'

describe Line do

  it 'should render a line' do
    graphics = double("graphics")
    line = Line.new(0,0,100,100,Color.red)
    expect(graphics).to receive(:setColor).with(Color.red)
    expect(graphics).to receive(:drawLine).with(0,0,100,100)
    line.render(graphics)
  end
end