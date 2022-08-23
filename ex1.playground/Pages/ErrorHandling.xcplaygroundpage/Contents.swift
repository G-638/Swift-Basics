
// Error Handling  -  unexcepted event occur durinig pgm execution.

// 4 steps to create error handling
//1. "enum" to represent type of Error
//2. create throwing func using "throws" kw
//3. call func using "try" kw
//4. Wrap the code with try in the do {...} block and add the catch {...} block to handle all errors.

//throw kw -> same effect as return kw

//return  -> return some Values
//throw -> return some error


enum DivisionError: Error {
  case dividedByZero
}
// create a throwing function using throws keyword
func division(numerator: Int, denominator: Int) throws {
  // throw error if divide by 0
  if denominator == 0 {
    throw DivisionError.dividedByZero
  }
  else {
    let result = numerator / denominator
    print(result)
  }
}

// call throwing function from do block
do {
  try division(numerator: 10, denominator: 0)
  print("Valid Division")
}

// catch error if function throws an error
catch DivisionError.dividedByZero {
  print("Error: Denominator cannot be 0")
}

// Disable Error Handling
func division1(numerator: Int, denominator: Int) throws {
  if denominator == 0 {
    throw DivisionError.dividedByZero
  }
    
  else {
    let result = numerator / denominator
    print("Result:", result)
  }
}
// disable error handling
try! division1(numerator: 10, denominator: 5)

// Causes of Error :
    // Invalid user input
    // Device failure
    // Loss of n/w cnnection
    // physical limitation(out of disk m/y)
    // code errors
    // opening unavailable files



