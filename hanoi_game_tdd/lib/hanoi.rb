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
        @board = Array.new(3) {Array.new}
        populate
    end

    def [](stack)
        @board[stack]
    end

    def []=(stack, value)
        @board[stack] = value
    end

    def populate
        @board[0].push(3, 2, 1)
    end

    def move(stack, new_stack)
        ele = @board[stack].pop
        @board[new_stack] << ele
    end

    
end
