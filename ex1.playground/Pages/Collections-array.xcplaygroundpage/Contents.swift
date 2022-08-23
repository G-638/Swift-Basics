// Collections - Types arrays, sets, and dictionaries

//Array       -> ordered collection of values
// set        -> unordered collection of unique value
// Dictionary -> unordered collection of Key-value associations.


//Arrays
var someInts: [Int] = [] // create array of any data type
var value = [Int]() // another way.
print(someInts,value)
//(or)
let emptyIntArr:Array<Int>? = Array()
print(emptyIntArr!)

//Creating an Array with a Default Value
var someDoubles = Array(repeating: 0.1, count: 3)
var anotherSomeDoubles = Array(repeating: 1.0, count: 3)
var sixDoubles = someDoubles + anotherSomeDoubles

// append - add data at end
someInts.append(3);

//Access array
someInts[0]

// append an array at end
var array: [Int] = [2,3,4]
someInts.append(contentsOf: array)

//insert
someInts.insert(32, at: 0)

//modify element of array
someInts[0] = 1
someInts

//remove element from an array
var languages = ["Swift","Java","Python"]
languages.remove(at: 0)
languages.removeFirst()
languages.removeLast()
languages.removeAll()

//Array methods
var dailyActivities = ["Repeat", "Eat"]
dailyActivities.sort()
dailyActivities.shuffle()
dailyActivities.contains("Eat") // true

// Access array
let fruits = ["Apple", "Peach", "Mango"]
for item in fruits {
    print(item)
}
fruits.isEmpty // false
value.isEmpty // true

// Array With Mixed Data Types
var address: [Any] = ["Scranton", 570]
print(address)
address.count
print(address.reversed())
someInts.min()
someInts.max()

//for-each
someInts.forEach { value in
    print(value)
}

let ages = ["Antoine": 28, "Jaap": 2, "Jack": 72]
ages.forEach { name, age in
    print("\(name) is \(age) years old")
}

(0...3).reversed().forEach { index in
    print("\(index)..")
}


