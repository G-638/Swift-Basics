
//Struct -> struct is used to store variables of different data types.

struct Car {

  var gear = 0

  // method inside struct
  func applyBrake(){
  print("Applying Hydraulic Brakes")
  }
}
var car1 = Car()
car1.gear = 5
print("Gear Number: \(car1.gear)")
// access method
car1.applyBrake()



//Swift Memberwise Initializer
struct Person {

// properties with no default values
var name: String
var age: Int
}

// instance of Person with memberwise initializer
var person1 = Person(name: "Kyle", age: 19) //  default value initialization

print("Name: \(person1.name) and Age: \( person1.age)")
