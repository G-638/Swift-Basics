// Access Control -> used to set accessability of classes,struct,enum, property, method, initializer and subscript


// 4 access control
    // public    -> accessable from everywhere
    // private   -> accessible only within defined class or struct
    // fileprivate -> accessible only within the current swift file
    // internal -> accessible only within the defined module(default)

// public -> properties and methods
class Animal {
  public var legCount: Int = 0
  public func display() {
    print("I am an animal.");
    print("Total Legs:", legCount)
  }
}
var obj = Animal()
obj.legCount = 4
obj.display()

// private -> properties and methods
class Student {
  private var name = "Tim Cook"
  private func display() {
    print("Hello from Student class")
  }
}

// create object of Student class
var student1 = Student()
// print("Name:", student1.name) // private protection level
// student1.display() // private protection level



// fileprivate Access Control

class Student1 {
  // fileprivate property
  fileprivate var name = "Tim Cook"
  // fileprivate method
  fileprivate func display() {
    print("Hello from Student class")
  }
}
// create object of Student class
var student2 = Student1()
// access name property
print("Name:", student2.name)
// access display method
student2.display()


// If we create another Swift file and try to access the fileprivate data members, we'll get an error.


// internal access control
class Student3 {
    internal var name = "Tim Cook"
}
var student3 = Student3()
print("Name:", student3.name)

// If we create another module and try to access the internal data members, we'll get an error.
