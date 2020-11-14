class Queue

    def initialize(arr)
        @arr = arr
    end

    def enqueue(el)
        @arr.unshift(el)
    end

    def dequeue
        @arr.pop
    end

    def peek
        @arr[-1]
    end

end

p que = Queue.new([1,2,3,4,5,6])
p que.enqueue(7)
p que
p que.dequeue
p que.peek
p que