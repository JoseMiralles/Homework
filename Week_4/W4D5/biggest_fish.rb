FISH = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

# n^2
def exponential
    result = ""
    iterations = 0
    FISH.each do |el|
        FISH.each do |el2|
            iterations += 1
            result = el > el2 ? el : el2
        end
    end
    p iterations
    result
end
p exponential

# n logn
def linearithmic
    result = ""
    iterations = 0
    FISH.each_with_index do |el, i|
        FISH[i..-1].each do |el2|
            iterations += 1
            result = el > el2 ? el : el2
        end
    end
    p iterations
    result
end
p linearithmic

# n
def linear
    result = ""
    iterations = 0
    FISH.each do |f|
        result = f if f.length > result.length
        iterations += 1
    end
    p iterations
    result
end
p linear