// Generics -> create single func and class that can used either different data type

// create a generic class
class Information<T> {
  // property of T type
  var data: T
  init (data: T) {
    self.data = data
  }
  // method that return T type variable
  func getData() -> T {
    return self.data
  }
}
//initialize generic class with Int data
var intObj = Information<Int>(data: 6)
print("Generic Class returns:", intObj.getData())
// initialize generic class with String data
var strObj = Information<String>(data: "Swift")
print("Generic Class returns:", strObj.getData())



// Type Constraints in Swift Generics
func addition<T: Numeric>(num1: T, num2: T) { // type constraint is "numeric" -> supports (Int,Double) , pass other types means thrown error.
  print("Sum:", num1 + num2)
}
// pass Int value
addition(num1: 5, num2: 10)
// pass Double value
addition(num1: 5.5, num2: 10.8)

// Advantages -> code resuability and used in collection.

