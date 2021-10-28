
require "byebug"
# Remove dups
# Array has a uniq method that removes duplicates from an array. It returns the unique elements in the order in which they first appeared:

# [1, 2, 1, 3, 3].uniq # => [1, 2, 3]
# Write your own version of this method called my_uniq; it should take in an Array and return a new array.

def my_uniq(arr)
    arr.uniq
end


# Two sum
# Write a new Array#two_sum method that finds all pairs of positions where the elements at those positions sum to zero.

# NB: ordering matters. We want each of the pairs to be sorted smaller index before bigger index. We want the array of pairs to be sorted "dictionary-wise":

# [-1, 0, 2, -2, 1].two_sum # => [[0, 4], [2, 3]]
# [0, 2] before [2, 1] (smaller first elements come first)
# [0, 1] before [0, 2] (then smaller second elements come first)

def two_sum(arr)
    pairs = []
    arr.each_with_index do |el1, i1|
        arr.each_with_index do |el2, i2|
            if i2 > i1 && el1 + el2 == 0
                # debugger
                pairs << [i1, i2]
            end
        end
    end

    pairs
end



# My Transpose
# To represent a matrix, or two-dimensional grid of numbers, 
# we can write an array containing arrays which represent rows:

# rows = [
#     [0, 1, 2],
#     [3, 4, 5],
#     [6, 7, 8]
#   ]

# row1 = rows[0]
# row2 = rows[1]
# row3 = rows[2]

# We could equivalently have stored the matrix as an array of columns:

# cols = [
#     [0, 3, 6],
#     [1, 4, 7],
#     [2, 5, 8]
#   ]
# Write a method, my_transpose, which will convert between the row-oriented and column-oriented representations. You may assume square matrices for simplicity's sake. Usage will look like the following:

# my_transpose([
#     [0, 1, 2],
#     [3, 4, 5],
#     [6, 7, 8]
#   ])
#  # => [[0, 3, 6],
#  #    [1, 4, 7],
#  #    [2, 5, 8]]


def my_transpose(arr)
    arr.transpose
end


# Stock Picker
# Write a method that takes an array of stock prices (prices on days 0, 1, ...), 
# and outputs the most profitable pair of days on which to first buy the stock 
# and then sell the stock. Remember, you can't sell stock before you buy it!

def stock_picker(arr)
    count = Hash.new{|h, k| h[k] = []}

    arr.each_with_index do |ele1, i1|
        arr.each_with_index do |ele2, i2|
            if i2 < i1
                count[ele1 - ele2].push(i2, i1)
            end
        end
    end
    sorted = count.sort_by {|k,v| k}
    sorted[-1][-1]
end

