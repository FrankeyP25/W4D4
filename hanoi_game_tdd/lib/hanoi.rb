# Towers of Hanoi
# Write a Towers of Hanoi game.

# Keep three arrays, which represent the piles of discs. Pick a representation of the discs to store in the arrays, maybe just a number representing their size. Don't worry too much about making the user interface pretty.

# In a loop, prompt the user (using gets) and ask what pile to select a disc from and where to put it.

# After each move, check to see if they have succeeded in moving all the discs to the final pile. If so, they win!

# Note: don't worry about testing the UI. Testing console I/O is tricky (don't bother checking gets or puts). Focus on:

# #move
# #won?

class Hanoi
    attr_accessor :board

    def initialize
        @board = [[3, 2 ,1],[],[]]
        # populate
    end

    def [](stack)
        @board[stack]
    end

    def []=(stack, value)
        @board[stack] = value
    end
    
    def move
        loop do 
        if win?
            puts "you have won"
            break
        else
            puts "starting position and end position ex: '1 2'"
            pos = gets.chomp.split(" ").map(&:to_i) #=? [1],[2]
            i1 , i2 = pos 
            ele = @board[i1].pop
            @board[i2] << ele
            p @board
        end 
        end
    end

    def win?
        @board.any? { |stack| (stack.length == 3 && stack == stack.sort.reverse) && @board.index(stack) != 0}
    end

    
end
