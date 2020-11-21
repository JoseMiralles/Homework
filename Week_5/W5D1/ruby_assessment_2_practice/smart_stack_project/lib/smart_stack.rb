require_relative "stack"

class SmartStack < Stack

    attr_reader :max_size

    def initialize(n)
        @max_size = n
        @underlying_array = Array.new
    end

    def full?
        @underlying_array.length == self.max_size
    end

    require "byebug"
    def push(*args)
        args = [args] if args.class != Array
        raise "stack is full" if @underlying_array.size + args.size > @max_size
        @underlying_array = @underlying_array + args
        debugger
        @underlying_array.size
    end

    def pop(n = nil)
        return [@underlying_array.pop] if n == nil
        
        result = []
        n.times {result << @underlying_array.pop}
        return result
    end

end