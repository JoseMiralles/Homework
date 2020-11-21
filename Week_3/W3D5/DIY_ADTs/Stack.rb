class Stack

    def initialize(arr)
        @arr = arr
    end

    def push(el)
        @arr.push(el)
    end

    def pop
        @arr.pop()
    end

    def peek
        @arr[-1]
    end

end

p stack = Stack.new([1,2,3,4,5])
p stack.push(4)
p stack.pop
p stack.peek
p stack