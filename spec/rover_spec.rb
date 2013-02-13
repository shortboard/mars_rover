require 'spec_helper'
require_relative '../rover'

describe "The rover" do
	it "initializes to default values" do
		rover = Rover.new
		rover.x.should be 0
		rover.y.should be 0
		rover.direction.should == 'N'
	end
  it "gets and sets x correctly" do
    rover = Rover.new
    expect {rover.x = 27}.to change {rover.x}.from(0).to(27)
    expect {rover.x = -100}.to change {rover.x}.from(27).to(-100)
  end
  it "gets and sets y correctly" do
    rover = Rover.new
    expect {rover.y = 27}.to change {rover.y}.from(0).to(27)
    expect {rover.y = -100}.to change {rover.y}.from(27).to(-100)
  end
  it "gets and sets the direction correctly" do
  	rover = Rover.new
  	expect {rover.direction = 'S'}.to change{rover.direction}.from('N').to('S')
  end
  it "can turn left" do
  	rover = Rover.new
  	expect {rover.turnLeft}.to change {rover.direction}.from('N').to('W')
  	expect {rover.turnLeft}.to change {rover.direction}.from('W').to('S')
  	expect {rover.turnLeft}.to change {rover.direction}.from('S').to('E')
  end
  it "can turn right" do
  	rover = Rover.new
  	expect {rover.turnRight}.to change {rover.direction}.from('N').to('E')
  	expect {rover.turnRight}.to change {rover.direction}.from('E').to('S')
    expect {rover.turnRight}.to change {rover.direction}.from('S').to('W')
  end
  it "can move forward" do
  	rover = Rover.new
  	expect {rover.moveForward}.to change {rover.y}.by(1)
  	rover.turnRight
  	expect {rover.moveForward}.to change {rover.x}.by(1)
  end
end