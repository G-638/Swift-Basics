// Tuples
//Tuples group multiple values into a single compound value.

// contain as many different types as you like - (Int, Int, Int), (String, Bool) ...

var http404Error = (404, "Not Found")
var count: Int!
count = 6


// (or)

// Named Tuple
let httpResponse = (statusCode: 200, message: "OK") // access using "httpResponse.statusCode"

// decompose tuples into seperate constant variable
let (statusCode, statusMessage) = http404Error

//only need some of the tuple’s values -> ignore parts of tuple using underscroe(_)
let (justTheStatusCode, _) = http404Error
justTheStatusCode

// Access individual element using index
print("The status code is \(http404Error.0)")
print("The status message is \(http404Error.1)")


// Modify tuple value when it is declared as "var"
http404Error.1 = "User Not Found"
print(http404Error)

// Nested Tuple
var alphabets = ("A", "B", "C", ("a", "b", "c"))
 
//access nested tuple
alphabets.1
alphabets.3.0

//Add or remove value in tuple
var company = ("Swift","Apple")
company.1 = "microsoft" // Add
//company.removeFirst()   // can't remove
print(company)

// Dictionary inside tuple
var laptopLaunch = ("MacBook", 1299, ["Nepal": "10 PM", "England": "10 AM"])
print(laptopLaunch.2)

laptopLaunch.2["Nepal"] = "11 AM"

print(laptopLaunch.2)



// Note − Tuples are useful for temporary values and are not suited for complex data.
    
