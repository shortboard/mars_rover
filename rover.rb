# Public: This is the rover class. A rover holds a position and a direction
# and contains all the methods required to turn and move.
#
class Rover
# Public: Gets/Sets attributes x, y and direction
	attr_accessor :x, :y, :direction

# Public: Initializer for the rover class.
#
# ex -The initial value for x, default 0
# why -The initial value for y, default 0
# direct - The initial value for direction, default 'N'
	def initialize (ex = 0, why = 0, direct = 'N')
		@x = ex
		@y = why
		direct.upcase!
		@direction = direct
	end

# Public: Turns the rover to the left.
	def turnLeft
		@direction = case direction
								 when 'N' then 'W'
								 when 'W' then 'S'
								 when 'S' then 'E'
								 when 'E' then 'N'
		end
	end

# Public: Turns the rover to the right.
	def turnRight
		@direction = case direction
								 when 'N' then 'E'
								 when 'E' then 'S'
								 when 'S' then 'W'
								 when 'W' then 'N'
		end
	end

# Public: Moves the rovers position forward.
	def moveForward
		if direction == 'N'
			@y += 1
		elsif direction == 'S'
			@y -= 1
		elsif direction == 'E'
			@x += 1
		elsif direction == 'W'
			@x -= 1
		end
	end
end