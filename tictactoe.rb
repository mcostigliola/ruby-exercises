class TicTacToe
  @winner = false
  def win?
   return @winner
  end
end

class Board
    attr_reader :board
    attr_accessor :counter
    @@counter = 1
    def initialize
     @board = [
        ['-', '-', '-'],
        ['-', '-', '-'],
        ['-', '-', '-']
      ]
    end
  
    def printb
      @board.each do |row|
        print "|"
        row.each { |cell| print "#{cell}|" }
        puts "\n-------"
      end
    end

    def update_board(choice1, choice2, player)
        if @board[choice1.to_i - 1][choice2.to_i - 1] == "-"
            @board[choice1.to_i - 1][choice2.to_i - 1] = player.pass_symbol
            @@counter += 1
        else
            puts "Box not available"
        end
    end

    def count_match()
        return @@counter
    end
end

class Player
    attr_accessor :name, :color
    def initialize(name, color)
        @name = "Player " + name
        @color = color
    end

    def print_name()
        return "Created #{@name} with symbol #{color}"
    end

    def pass_symbol()
        return @color
    end
end

is_win = TicTacToe.new

puts "Enter name:"
player1 = Player.new(gets.chomp, 'O')
puts player1.print_name()

puts "Enter name:"
player2 = Player.new(gets.chomp, 'X')
puts player2.print_name()
puts "Select the box : E.g. 1 2\n"
board = Board.new
board.printb


while !is_win.win?

    break if board.count_match.to_i > 9
    puts board.count_match.to_i

    puts "Select axis x: "
    choice_x = gets.chomp.to_i
    puts "Select axis y: "
    choice_y = gets.chomp.to_i
    if choice_x > 3 || choice_y > 3
        puts "Enter a number < 3"
    else
        if board.count_match.to_i.odd?
            board.update_board(choice_x, choice_y, player1)
        else
            board.update_board(choice_x, choice_y, player2)
        end
        board.printb
    end
end