class Map

    def initialize(map = [[]])
        @map = map
    end

    def set(key, value)
        @map.each do |el|
            if el[0] == key
                return el[1] = value
            end
        end
        @map.push( [key, value] )
    end

    def get(key)
        @map.each do |el|
            return el[1] if el[0] == key
        end
        return nil
    end

    def delete(key)
        (0...@map.size).each do |i|
            if @map[i][0] == key
                @map.delete_at(i)
                return true
            end
        end
        return false
    end

end

p map = Map.new( [ [1, "first"], [2, "second"], ["third", 3] ] )
p map.set(4, "fourth")
p map.set(2, "new second")
p map
p map.get(2)
p map.delete(2)
p map