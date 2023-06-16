class Stack
    attr_accessor :stack, :limit
    
    def initialize(limit = nil)
        @stack = []
        @limit = limit
    end

    def push(value)
        if limit && @stack.length >= limit 
            raise "Stack Overflow"
        else 
            @stack.push(value)
        end
    end

    def pop
        @stack.pop
    end

    def peek
        @stack[-1]
    end

    def size
        @stack.length
    end

    def empty?
        @stack.empty?
    end

    def full?
        limit ? @stack.length == limit : false
    end

    def search(value)
        @stack.index(value) ? @stack.size - @stack.index(value) - 1 : -1
    end
end
