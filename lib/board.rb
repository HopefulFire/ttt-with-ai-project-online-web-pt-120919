class Board

	attr_accessor :cells

	def initialize
		reset!
	end

	def reset!
		@cells = [' '] * 9
	end

	def display
		puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
		puts "-----------"
		puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
		puts "-----------"
		puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
	end

	def position(input)
		cells[input.to_i - 1]
	end

	def full?
		!cells.any? do |cell|
			cell == ' '
		end
	end

	def turn_count
		count = 0
		cells.each do |cell|
			if cell != ' '
				count += 1
			end
		end
		count
	end

	def taken?(input)
		if position(input) != ' '
			true
		else
			false
		end
	end

	def valid_move?(input)
		if input.to_i < 10 && input.to_i > 0 && !taken?(input)
			true
		else
			false
		end
	end

	def update(input, player)
		@cells[input.to_i - 1] = player.token
	end

end