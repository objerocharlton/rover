require 'mission_rover'

class Mission
	attr_accessor :list_positions

	def initialize in_file
		@list_positions = []
		in_doc = in_file.split "\n"
		plateau = in_doc.shift
		in_doc.each_slice(2) do |a|
			rover = Mission_Rover.new
			pos_direction = a.first.split
			rover.x_point = pos_direction[0].to_i
			rover.y_point = pos_direction[1].to_i
			rover.face = pos_direction[2]
			rover.movement a.last.chars
			@list_positions << rover
		end
	end

	def rover_positions_as_string
		@list_positions.collect do |a|
			[a.x_point, a.y_point, a.face].join(" ")
		end
	end
end
