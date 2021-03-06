// Queue - очередь

// []
// [] <- 1
// [1] <- 2
// [1,2] <- 3
// [1,2,3] <- 4
// [1,2,3,4]
// [1,2,3,4] ->
// [2,3,4]
// [2,3,4] ->
// [3,4]

struct Queue<T>: CustomStringConvertible {
    
    private var list = LinkedList<T>()
    
    mutating func enqueue(element: T) {
        list.append(element)
    }
    
    mutating func dequeue() -> T? {
        guard !list.isEmpty, let element = list.first else { return nil }
        list.remove(element)
        return element.value
    }
    
    mutating func peek() -> T? {
        return list.first?.value
    }
    
    var description: String {
        return list.description
    }
}

var queue = Queue<Int>()

queue.enqueue(element: 3)
queue.enqueue(element: 4)
queue.enqueue(element: 5)
queue.enqueue(element: 6)

queue.dequeue()
queue
queue.dequeue()
queue

queue.peek()
queue


