# Write a method `anagrams(str_1, str_2)` that takes in two strings and returns
# a boolean indicating whether or not the two strings are anagrams. Two strings are
# anagrams if they contain the same exact characters, but not necessarily in the
# same order.
#
# Your solution should have a linear - O(n) runtime, where n is the combined
# length of the input strings.
#
# Scoring: 8 points maximum
#   4 points awarded for passing all seven test cases
#   4 points awarded for linear runtime
#
# This component of the assessment is estimated to take 10 minutes.


def anagrams(str1, str2)
    h1 = Hash.new() {|h,k| h[k] = 0}
    str1.each_char {|c| h1[c] += 1}

    h2 = h1.clone
    h2.each {|k,v| h2[k] = 0}
    str2.each_char {|c| h2[c] += 1}

    return false if h1.length != h2.length
    h1.each { |k,v| v != h2[k] ? (return false) : nil }
    true
end


# Test Cases
p anagrams("restful", "fluster")    # => true
p anagrams("zyyx", "zyxy")          # => true
p anagrams("base", "case")          # => false
p anagrams("taco", "cat")           # => false
p anagrams("cat", "taco")           # => false
p anagrams("zyyx", "zyx")           # => false
p anagrams("zyx", "zyyx")           # => false
