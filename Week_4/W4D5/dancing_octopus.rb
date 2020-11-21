TILES = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

# N
def linear(dir)
    iterations = 0
    TILES.each_with_index do |el, i|
        iterations += 1
        if el == dir
            p iterations
            return i 
        end
    end
    p iterations
    nil
end
p linear("up")
p linear("right-down")


# O(1)
TILES_H = {}
TILES.each_with_index { |el, i| TILES_H[el] = i }

def constant(dir)
    TILES_H[dir]
end

p constant("up")
p constant("right-down")