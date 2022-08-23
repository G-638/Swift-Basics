// Function - block of code , to  some task
// Benefits -> 1. code resuability 2. code readability
// 2types -> 1. predefined func 2. user-defined func.

// syntax:
//func functionName(parameters)-> returnType {
//  // function body
//}
import Foundation

// func with no param
func greet() {
print("Hello World!")
}
greet()

// func with param, return type
func addNum(num1: Int, num2 : Int) -> Int {
    let sum =  num1 + num2
    print(sum);
    return sum;
}
var result = addNum(num1: 5, num2: 5)
print("result \(result)")

// pre-defined func
print(sqrt(25))
print(pow(2,3))

// func param, return type and default value
func addNumbers(a: Int = 5, b: Int = 7) -> Int{
    let sum = a + b
    return sum
}
addNumbers(a: 2, b: 3)
addNumbers(a: 2)
addNumbers()

// func with argument label -> use any name as argument label(it makes more sense while calling func)
func sum(variable1 a: Int, var2 b: Int) {
    print(a + b)
}
sum(variable1: 3, var2: 2)

// omit argument labels and param name using(_)
func sum(_ a: Int,_ b: Int){
    print(a + b)
}
sum(3, 5)

//func with variadic params using (...)
func sum1(nums: Int...) -> Int {
    var sum: Int = 0
    for item in nums{
        sum = sum + item
    }
    return sum
}
var resultSum = sum1(nums: 1,2,4 )

//func with inout param
// func param cannot modify inside func body (modify using "inout" and "&" kw)

func changeName(name: inout String){ // without inout kw means shown Error: "cannot assign to value: 'name' is a 'let' constant"
    
    if name == "Ross"{
        name = "john"
    }
}
var name = "Ross"
changeName(name: &name)
name

// func with return multiple values
func compute(number: Int) -> (Int, Int, Int) {
  let square = number * number
  let cube = square * number
  return (number, square, cube)
}

var resultant = compute(number: 5)
print(resultant.0,resultant.1) // 5 , 25

//nested func with param, return type
func operate(symbol: String) -> (Int, Int) -> Int {
  // inner function for add
  func add(num1:Int, num2:Int) -> Int {
    return num1 + num2
  }
  // inner function for subtract
  func subtract(num1:Int, num2:Int) -> Int {
    return num1 - num2
  }
  let operation = (symbol == "+") ?  add : subtract
  return operation
}

let operation = operate(symbol: "+")
operation
let resultValue = operation(8, 3) // call inner func from outside of outer func
print("Result:", resultValue)


//function recursion - > func call by iteself repeatedly
func factorial(num: Int) -> Int {
  if num == 0 {
    return 1
  }
  else {
    return num * factorial(num: num - 1)
  }

}
var recursionResult = factorial(num: 3)
print("The factorial of 3 is", recursionResult)
//pros -> code cleaner, shorter and used in data structurs
//cons -> lot of stack space, more process time and diffcult to debug cmp to iteraive pgm


//Function overloading -> same function name but different arguments
//Eg:
//func test() { ... }
//func test(value: Int) -> Int{ ... }
//func test(value: String) -> String{ ... }
//func test(value1: Int, value2: Double) -> Double{ ... }

func display(number1: Int, number2: Int) {
   print("1st Integer: \(number1) and 2nd Integer: \(number2)")
}
func display(number: Int) {
   print("Integer number: \(number)")
}
display(number: 5) // Integer Number 5
display(number1: 6, number2: 8) // 1st Integer: 6 and 2nd Integer: 8

// function overloading with argument label
func display(_ age:Int) {
    print("Person1 Age:", age)
}

func display(person2 age:Int) {
    print("Person2 Age:", age)
}
display(25)
display(person2: 38)
