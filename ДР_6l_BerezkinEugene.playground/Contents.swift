import UIKit


struct Queue<T: Comparable> {
    private var elements: [T] = []
    mutating func enqueue(_ element: T) {
        elements.append(element)
    }
    mutating func dequeue() -> T? {
        return elements.removeFirst()
    }
    
    
    subscript(index: Int) -> T?{
        if index > elements.count || index < 0{
            return nil
        }else{
            return elements[index]
        }
        
    }
}
extension Queue {
    func filter(predicate: (T) -> Bool) -> [T] {
        var myArray = [T]()
        for element in elements {
            if predicate(element){
                myArray.append(element)
            }
        }
        return myArray
    }
    
}

var myQueue = Queue<Int>()
myQueue.enqueue(2)
myQueue.enqueue(3)
myQueue.enqueue(6)
myQueue.enqueue(9)
myQueue.enqueue(23)
myQueue.dequeue()
myQueue.dequeue()
print(myQueue)
var filteredQueue = myQueue.filter(predicate: {$0 % 2 == 0})
print(filteredQueue)





            
    


