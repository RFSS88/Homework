class Queue

    def  initialize
        @line = []
    end
    
    def enqueue(ele)
        @line.push(ele)
    end

    def dequeue
        @line.shift
    end

    def peek
        @line.first
    end
end

cvs = Queue.new