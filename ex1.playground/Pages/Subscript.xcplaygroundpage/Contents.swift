//  SubScript

//Subscripts are used to access information from a collection, sequence and a list in Classes, Structures and Enumerations without using a method

// SubScript - > store and retrieve values using index (without have seperate method)

// Simple ex:
// subscripting an array..
var array = [1, 2, 3, 5, 8, 13]

print(array[0]) // prints 1

print(array[1...4]) // 1...4 is the range from 1 to 4 including 4
// subscripting a dictionary..
var dictionary = ["male": "I am a male"]
print(dictionary["male"]!) // prints "I am a male"



//syntax:
//subscript (<parameters>) -> <return type> {
//      // the getter is required
//   get {
//      // used for subscript value declarations
//   }
//   set(newValue) { // the setter is optional
//      // definitions are written here
//   }
//}


// EX1:
class daysofaweek {
    private var days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "saturday"]
    subscript(index: Int) -> String {
        get {
            return days[index]
        }
        set(newValue) {
            self.days[index] = newValue
        }
    }
}
var p = daysofaweek()
print(p[0]) // prints sunday
p[0] = "Monday"
print(p[0]) // prints Monday


// Ex2:
struct subexample {
   let decrementer: Int
   subscript(index: Int) -> Int {
      return decrementer / index
   }
}
let division = subexample(decrementer: 100)

print("The number is divisible by \(division[9]) times")
print("The number is divisible by \(division[2]) times")
