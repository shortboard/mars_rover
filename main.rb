require_relative 'plateau'

input = []

# Open the file and put each line into an array
if (!File.exists?(ARGV[0]))
	exit
end
File.open(ARGV[0]).readlines.each do |line|
	input.push(line);
end

# Create a plateau using the input values for size
size = input.first.split(' ')
input.shift
plateau = Plateau.new(size.first.to_i,size.last.to_i)

# Create and run each rover in the file
for i in 0..input.length-1 do
	if (i % 2 == 0)
		rov = input[i].split(' ')
		plateau.dropRover(rov[0].to_i,rov[1].to_i,rov[2])
	else
		plateau.runRover(i/2, input[i])
		curr = plateau.getRover(i/2)
		print "#{curr[0]} #{curr[1]} #{curr[2]}\n"
	end
end