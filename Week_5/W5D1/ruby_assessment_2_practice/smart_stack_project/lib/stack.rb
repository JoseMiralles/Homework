class Stack

    def initialize
        @underlying_array = Array.new
    end

    def size
        @underlying_array.size
    end

    def empty?
        @underlying_array.empty?
    end

    def top
        @underlying_array[-1]
    end

    def peek(n)
        @underlying_array[-n..-1]
    end

    def push(el)
        @underlying_array += [el]
        @underlying_array.size
    end

    def pop()
        @underlying_array.pop
    end

end