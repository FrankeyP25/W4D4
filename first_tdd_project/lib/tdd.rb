
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

p two_sum([-1, 0, 2, -2, 1])