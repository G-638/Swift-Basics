
//Enum - Enumeration -> user-defined data type that has a fixed set of related values
//syntax:
//enum Season {
//  case spring, summer, autumn, winter
//}

// define enum
enum Season {
  // define enum values
  case spring, summer, autumn, winter
}
// create enum variable
var currentSeason: Season
// assign value to enum variable
currentSeason = Season.summer
print("Current Season:", currentSeason)


//enum with switch
enum PizzaSize {
  case small, medium, large
}

var size = PizzaSize.medium

switch(size) {
  case .small:
    print("I ordered a small size pizza.")

  case .medium:
    print("I ordered a medium size pizza.")

   case .large:
     print("I ordered a large size pizza.");
}

//Iterate Enum cases
enum Season1: CaseIterable {
  case spring, summer, autumn, winter
}
for currentSeason in Season1.allCases {
  print(currentSeason)
}

// enum with rawValues
enum Size : Int {
  case small = 10
  case medium = 12
  case large = 14
}
var result = Size.small.rawValue
print(result)

//enum Associated Values
enum Laptop {
  case name(String)
  case price (Int)
}
var brand = Laptop.name("Razer")
print(brand)

var offer = Laptop.price(1599)
print(offer)


// enum Associate multiple values
enum Marks {
case gpa(Double, Double, Double)
case grade(String, String, String)
}
var marks1 = Marks.gpa(3.6, 2.9, 3.8)
print(marks1)
var marks2 = Marks.grade("A", "B", "C")
print(marks2)

//Named Associated Values
enum Pizza {
  case small (inches: Int)
  case medium (inches: Int)
  case large (inches: Int)
}
var pizza1 = Pizza.medium(inches: 12)
print(pizza1)


//enum cannot have both raw values and associated values at same time.
// raw values ->  same type
// Associate values -> any type

