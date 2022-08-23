
// Protocol - blueprint of methods or properties adopted by classes
// its not contain definition only contains declaration
// it must specify wheter property is get or set

//eg:
//protocol Greet {
//
//    // blueprint of a property
//    var name: String { get }
//
//
//    // blueprint of a method
//    func message()
//  }


protocol Greet {
  // blueprint of property
  var name: String { get }
  // blueprint of a method
  func message()
}
class Employee: Greet {
  // implementation of property
  var name = "Perry"
  // implementation of method
  func message() {
    print("Good Morning", name)
  }
}
var employee1 = Employee()
employee1.message()

//protocal inheritance
// syntax:
//protocol Car {
//  ...
//}
//
//protocol Brand: Car {
//  ...
//}

protocol Car1 {
  var colorOptions: Int { get }
}
// inherit Car protocol
protocol Brand: Car1 {
  var name: String { get }
}

class Mercedes: Brand {
    // must implement both protocol properties
  var name: String = ""
  var colorOptions: Int = 0
}
var car1 = Mercedes()
car1.name = "Mercedes AMG"
car1.colorOptions = 4

print("Name:", car1.name)
print("Color Options:", car1.colorOptions)

//protocol can inherit multiple class - > protocol C:A,B


// Protocol extension
protocol Brake {
  func applyBrake()
}
class Car2: Brake {
  var speed: Int = 0

  func applyBrake() {
    print("Brake Applied")
  }
}
// extend protocol
extension Brake {
  func stop() {
    print("Engine Stopped")
  }
}
let car2 = Car2()
car2.speed = 61
print("Speed:", car2.speed)

car2.applyBrake()

// access extended protocol
car2.stop()
