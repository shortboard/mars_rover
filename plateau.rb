require_relative 'rover'

# Public: The Plateau class contains an array of rovers within it's dimesions.
# These can be sent instructions to move around the plateau.
#
class Plateau
# Public: Gets/Sets attributes height, width and rovers
	attr_accessor :height, :width, :rovers

# Public: Initilizer for the plateau class. This set's the values of height and
#width to the input values and defines that rovers is an array.
#
# h -Height is set to this value.
# w - Width is set to this value.
	def initialize (h, w)
		@height = h
		@width = w
		@rovers = []
	end

# Public: Drops a rover onto the plateau, ready for exploration.
#
# x -Initial x position of the rover.
# y -Initial y position of the rover.
# direction -Initial direction the rover is facing.
	def dropRover(x, y, direction)
		rover = Rover.new(x,y,direction)
		rovers.push(rover)
	end


# Public: Gets the position and direction of the rover.
#
# num -The position of the rover in the rovers array
#
# Returns the x, y and direction of the rover as an array
	def getRover(num)
		return [rovers[num].x,rovers[num].y,rovers[num].direction]
	end

# Public: Runs a series of commands sent by the command centre on a particular
# rover.
#
# num - The position of the rover in the rovers array
# run_string -A string of commands for the rover
	def runRover(num, run_string)
		run_string.upcase!
		run_string.each_char do |i|
			if (i == 'M')
				if (!checkCollision(rovers[num].x,rovers[num].y,rovers[num].direction))
					rovers[num].moveForward
				end
			elsif (i == 'L')
				rovers[num].turnLeft
			elsif (i == 'R')
				rovers[num].turnRight
			end
		end
	end

	private

# Internal: Checks for collisions against the edge of the plateau.
#
# x -The x position of the rover being tested.
# y -The y position of the rover being tested
# d -the direction the rover being tested is facing.
#
# Returns true if a collision occurs and false if there is no collision
	def checkCollision(x, y, d)
		if (d == 'N')
			if (y == height)
				return true
			end
		elsif (d == 'S')
			if (y == 0)
				return true
			end
		elsif (d == 'E')
			if (x == width)
				return true
			end
		elsif (d == 'W')
			if (x == 0)
				return true
			end
		end
		return false
	end
end