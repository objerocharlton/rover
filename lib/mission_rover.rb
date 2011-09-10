class Mission_Rover
	attr_accessor :x_point, :y_point, :face
	Points = ['N', 'E', 'S', 'W']

	def movement movements
		movements.each do |move|
			if move == "R" then change_direction "R"
			elsif move == "L" then change_direction "L"
			else move_forward
			end
		end
	end

	protected 
	def change_direction rotation 
		if rotation == "R" then 
			@face = Points[(Points.index(face) + 1) % 4]
		else @face = Points[Points.index(face) - 1]
		end
	end

	def move_forward
		case  face
		when "N" 
			@y_point += 1
		when "S" 
			@y_point -= 1
		when "E" 
			@x_point += 1	
		when "W" 
			@x_point -= 1
		end
	end
end
