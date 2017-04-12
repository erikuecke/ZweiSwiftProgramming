//: Playground - noun: a place where people can play

import Cocoa

// Generics
// Generic Data Structures

// ASSOCIATED TYPE PROTOCOLS
// Creating StackIterator
struct StackITerator<T>: IteratorProtocol {
    
    var stack: Stack<T>
    
    mutating func next() -> T? {
        return stack.pop()
    }
}




// Setting up the stack
struct Stack<Element>: Sequence {
    var items = [Element]()
    
    mutating func push(_ newItem: Element) {
        items.append(newItem)
    }
    
    mutating func pop() -> Element? {
        guard !items.isEmpty else {
            return nil
        }
        return items.removeLast()
    }
    
    func map<U>(_ f: (Element) -> U) -> Stack<U> {
        var mappedItems = [U]()
        for item in items {
            mappedItems.append(f(item))
        }
        return Stack<U>(items: mappedItems)
    }
    
    func makeIterator() -> StackITerator<Element> {
        return StackITerator(stack: self)
    }
    
    mutating func pushAll<S: Sequence>(_ sequence: S) where S.Iterator.Element == Element {
        for item in sequence {
            self.push(item)
        }
    }
}


// Creating an instance of Stack
var intStack = Stack<Int>()
intStack.push(1)
intStack.push(2)
var doubledStack = intStack.map { 2 * $0 }

print(intStack.pop())
print(intStack.pop())
print(intStack.pop())

print(doubledStack.pop())
print(doubledStack.pop())

// Creating a Stack of strings
var stringStack = Stack<String>()
stringStack.push("this is a string")
stringStack.push("another stirng")

print(stringStack.pop())


// GENERIC FUNCTIONS AND METHODS
// Your own map function
func myMap<T, U>(_ items: [T], _ f: (T) -> (U)) -> [U] {
    var result = [U]()
    for item in items {
        result.append(f(item))
    }
    return result
}

// Mapping Arrays
let strings = ["one", "two", "three"]
let stringLengths = myMap(strings) { $0.characters.count }
print(stringLengths)

// TYPE CONSTRAINTS
// Using a type constraint to allow checking for equality
func checkIfEqual<T: Equatable>(_ first: T, _ second: T) -> Bool {
    return first == second
}
print(checkIfEqual(1, 1))
print(checkIfEqual("a string", "a string"))
print(checkIfEqual("a string", "a different string"))

// Using a type constraint to check CustomSTringConvertible
func checkIfDescriptionsMatch<T: CustomStringConvertible, U: CustomStringConvertible>(_ first: T, _ second: U) -> Bool {
    return first.description == second.description
}

print(checkIfDescriptionsMatch(Int(1), Int(1)))
print(checkIfDescriptionsMatch(1, 1.0))
print(checkIfDescriptionsMatch(Float(1.0), Double(1.0)))

// Using StackIterator
var myStack = Stack<Int>()
myStack.push(10)
myStack.push(20)
myStack.push(30)

var myStackIterator = StackITerator(stack: myStack)
while let value = myStackIterator.next() {
    print("got \(value)")
}

// Loopting through myStack
for value in myStack {
    print("for-in loop: got \(value)")
}

myStack.pushAll([1, 2, 3])
for value in myStack {
    print("after pushing: got \(value)")
}

// Pushing items to the stack
var myOtherStack = Stack<Int>()
myOtherStack.pushAll([1, 2, 3])
myOtherStack.pushAll(myOtherStack)
for value in myStack {
    print("after pushing items onto stack, go \(value)")
}












