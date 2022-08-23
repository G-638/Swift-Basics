class Animal {
  var name: String = ""
  func eat() {
    print("I can eat")
  }
}

class Dog: Animal {
  func display() {
    print("My name is ", name);
  }
}
var labrador = Dog()
labrador.name = "Rohu"
labrador.eat()     // I can eat
labrador.display() // My name is Rohu



// method overriding using "overriding" kw
class Animal1 {
 func eat() {
   print("I can eat")
 }
}

class Dog1: Animal1 {
  override func eat() {
    print("I eat dog food")
  }
}
var labrador1 =  Dog1()
labrador1.eat() // I eat dog food


// super kw usage
class Animal2 {
  func eat() {
    print("I can eat")
  }
}
class Dog2: Animal {
  override func eat() {
  super.eat()
  print("I eat dog food")
  }
}
var labrador2 =  Dog2()
labrador2.eat() // I can eat  I eat dog food


// Prevent Method Overriding using "final" kw
class Vehicle {
  final func displayInfo() {
    print("Four Wheeler or Two Wheeler")
  }
}
class Car: Vehicle {
    func displayInfo1() { // cannot "override" this method because of final kw
    print("Four Wheeler")
  }
}
var car1 =  Car()
car1.displayInfo1()


// override computed property(cannot override stored property -> leads error)
class University {
  var cost: Int { // computed property
  return 5000
 }
}
class Fee: University {
 override var cost: Int {  // override computed property
 return 10000
 }
}
var amount = Fee()
print("New Fee:", amount.cost)
