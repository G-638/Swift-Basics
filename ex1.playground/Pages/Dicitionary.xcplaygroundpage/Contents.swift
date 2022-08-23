// Dictioanry


// Empty Dictionary
var someDict = [Int: String]()
let emptyDictionary:[Int:String] = [:]
// (or)
let emptyDictionary1:Dictionary<Int, String> = [:]


var numbers = [1: "One", 2: "Two", 3: "Three"]

// Add value
numbers[4] = "Four"

//change value
numbers[3] = "tree"

//Access keys or values seperately
print(numbers.keys)
print(numbers.values)

//remove
numbers.removeValue(forKey: 1)
numbers

// create dictionary with 2 arrays
var cities = ["chennai","mumbai","Hyderabad", "wfwef"]
var Distance = [2000,10, 620]
let combinedData = Dictionary(uniqueKeysWithValues: zip(cities, Distance))

let city1 = [String](combinedData.keys)
let Distance1 = [Int](combinedData.values)




