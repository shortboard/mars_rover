require 'spec_helper'
require_relative '../plateau'

describe "Plateau" do
	it "initializes to correct dimesions" do
		plateau = Plateau.new(5,5)
		plateau.height.should be 5
		plateau.width.should be 5
	end
	it "creates a number of rovers successfully" do
		plateau = Plateau.new(5,5)
		plateau.dropRover(2,2,'N')
		plateau.dropRover(3,3,'W')
		plateau.should have(2).rovers
	end
	it "runs a rover correctly" do
		plateau = Plateau.new(5,5)
		plateau.dropRover(0,0,'N')
		expect {plateau.runRover(0,"MMRMMMLLM")}.to change {plateau.getRover(0)}.from([0,0,'N']).to([2,2,'W'])
	end
	it "can't go over the edge of the plateau" do
		plateau = Plateau.new(5,5)
		plateau.dropRover(0,0,'N')
		expect {plateau.runRover(0,"MMMMMMMMRMMMMMMMM")}.to change {plateau.getRover(0)}.from([0,0,'N']).to([5,5,'E'])
	end
end