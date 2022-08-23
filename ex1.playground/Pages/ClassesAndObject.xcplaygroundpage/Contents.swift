// create a class
class Room {
  var length = 0.0
  var breadth = 0.0
  func calculateArea() {
    print("Area of Room =", length * breadth)
  }
}
var studyRoom = Room()
studyRoom.length = 42.5
studyRoom.breadth = 30.8
studyRoom.calculateArea()


// Initializer
class Bike {
  // properties with no default values
  var name: String
  var gear: Int
  // initializer
  init(name: String, gear: Int){
    self.name = name // "varName" and "paramName" are same so , we use "self" to denote class var.
    self.gear = gear
  }
}
var bike1 = Bike(name: "BMX Bike", gear: 2)
print("Name: \(bike1.name) and Gear: \(bike1.gear)")


//class are reference type -> (Each instance of class shares the same copy of data) // in struct each instance is different copy of data
var bike2 = bike1 // same copy of data
bike1.name = "pulsar"
print(bike2.name)


// Initializer overloading
class Person {
  var age: Int
  init() {
    age = 20
  }
  init(age: Int) {
    self.age = age
  }
  // method to return age
  func getAge() -> Int {
    return age
  }
}
var person1 = Person()
var person2 = Person(age: 23)
print("Person1 Age:", person1.getAge())
print("Person1 Age:", person2.getAge())


// 2 type of init -> 1. designated init(before seen)  2. convinence init
// Convinence init // used only when default values comes
class University1 {
  var name : String
  var rank : String
  init(name : String, rank: String) {
    self.name = name
    self.rank = rank
  }
  // define convenience init
  convenience init() {
    self.init(name: "Kathmandu University", rank: "1st") // default values
  }
  
}
var university1 = University1() //  convinence init  calls the designated init
print(university1.name)
print("Rank:", university1.rank)


// Failable Initializer -> may or may not work , something wrong means  -> return "nil"
class File {
  var folder: String
  init?(folder: String) { // failable initializer
    if folder.isEmpty {
      print("Folder Not Found") // 1st output
      return nil
    }
    self.folder = folder
  }
}
var file  = File(folder: "")
if (file != nil) {
  print("File Found Successfully")
}
else {
  print("Error Finding File") // 2nd output
}


// Deinitializer(manual memory deallocation) -> deallocate instance of class when longer used(In run time,swift automatically deallocates memory and each class only single deinit )
class  Race {
  var laps: Int
  init() {
    laps = 5
    print("Race Completed")
    print("Total laps:", laps)
  }
  // define deinitializer
  deinit {
    print("Memory Deallocated")
  }
}
var result: Race? = Race()
// deallocate object
//result = nil


// properties - > 2forms - > 1.stored property(stores value)  2. computed property(stores value)
// //getter and setter for computed property
class Calculator {
  // stored properties
  var num1: Int = 0
  var num2: Int = 0
  // computed property
  var sum: Int {
      // num1 + num2
    get {
      num1 + num2
    }
    set {
      num1 = (newValue + 10)
      num2 = (newValue + 20)
    }
  }
}

var obj = Calculator()
obj.num1 = 20
obj.num2 = 50
print("Get value:", obj.sum) // gets value
obj.sum = 5 // modifies value
print("New num1 value:", obj.num1)
print("New num2 value:", obj.num2)


// static properties ->  without obj , acess static members
class University {
 // static property
 static var name: String = ""
 // non-static property
 var founded: Int = 0
}
//var obj1 = University()
// assign static property
University.name = "Kathmandu University"
print(University.name)
// assign non-static property
//obj1.founded = 1991
//print(obj1.founded)


// Methods
class Hall {
  var length = 0.0
  var breadth = 0.0
  var height = 0.0
  func calculateArea() {
    print("Area of Hall =", length * breadth)
  }
  func calculateVolume() {
    print("Volume of Hall =", length * breadth * height)
  }
}
var hall1 = Hall()
hall1.length = 42.5
hall1.breadth = 30.8
hall1.height = 45.2
hall1.calculateArea()
hall1.calculateVolume()


// STATIC METHOD
class Calculator1 {
  // non-static method
  func multiply(num1: Int, num2: Int) -> Int {
    return num1 * num2
  }
  // static method
  static func add(num1: Int, num2: Int) -> Int {
    return num1 + num2
   }
}
var obj2 = Calculator1()
// call static method
var result2 =  Calculator1.add(num1: 2, num2: 3)
print("2 + 3 =", result2)
// call non-static method
var result1 = obj2.multiply(num1:2,num2:2)
print("2 * 2 =", result1)

// self property in method
class Marks {
  var physics = 0
  func checkEligibility(physics: Int) {
    // using self property
    if (self.physics < physics) {
      print("Not Eligible for admission")
    }
    else {
      print("Eligible for admission")
    }
  }
}
var student1 = Marks()
student1.physics = 28
student1.checkEligibility(physics: 50)

//mutating method // class variable can't modify inside func, (achieved by using "mutating" kw)
struct Employee {
  var salary = 0
  // define mutating function
  mutating func salaryIncrement(increase: Int) {
  // modify salary property
  salary = salary + increase
  print("Increased Salary:",salary)
  }
}
var employee1 = Employee()
employee1.salary = 20000
employee1.salary = 10
employee1.salaryIncrement(increase: 5000)
