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
    rover.x.should be 0
    rover.x = 27
    rover.x.should be 27
    rover.x = -100
    rover.x.should be -100
  end
  it "gets and sets y correctly" do
    rover = Rover.new
    rover.y.should be 0
    rover.y = 27
    rover.y.should be 27
    rover.y = -100
    rover.y.should be -100
  end
  it "gets and sets the direction correctly" do
  	rover = Rover.new
  	rover.direction.should == 'N'
  	rover.direction = 'S'
  	rover.direction.should == 'S'
  end
  it "can turn left" do
  	rover = Rover.new
  	rover.direction.should == 'N'
  	rover.turnLeft
  	rover.direction.should == 'W'
  	rover.turnLeft
  	rover.direction.should == 'S'
  	rover.turnLeft
  	rover.direction.should == 'E'
  end
  it "can turn right" do
  	rover = Rover.new
  	rover.direction = 'N'
  	rover.direction.should == 'N'
  	rover.turnRight
  	rover.direction.should == 'E'
  	rover.turnRight
  	rover.direction.should == 'S'
  	rover.turnRight
  	rover.direction.should == 'W'
  end
  it "can move forward" do
  	rover = Rover.new
  	rover.moveForward
  	rover.moveForward
  	rover.turnRight
  	rover.moveForward
  	rover.y.should be 2
  	rover.x.should be 1
  end
end