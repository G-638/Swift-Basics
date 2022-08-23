// optional
var number: Int? = 123
number ?? 0 
if number != nil {
    print("convertedNumber has an integer value of \(number!).") // use exclamation(forced unwrapping)
}
else{
    print("nil value");
}

// Optional binding  -> ( if let )
//if let constantName = someOptional {
//    statements
//}
number = 123
if let myNumber = number {
    print("number is \(myNumber)") // without use exclamation(Conditional unwrapping)
}
// myNumber -> cannot myNumber in the scope.


//Implictly Unwrapping
//optional will always have a value, after that value is first set.
//it’s useful to remove the need to check and unwrap the optional’s value every time it’s accessed, because it can be safely assumed to have a value all of the time.
let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // no need for an exclamation point
print(implicitString)




// Quetions

// optionla tuple
var optionalTuple: (String, Int)? = ("Hello", 10)

// Guard - let:
func someFunc(blog: String?) {

    guard let blogName = blog else {
        print("some ErrorMessage")
//        print(blogName) // will create an error Because blogName isn't defined yet
        return
    }
    print(blogName) // You can access it here ie AFTER the guard statement!!

    //And if I decided to do 'another' guard let with the same name ie 'blogName' then I would create an error!
//    guard let blogName = blog else { // errorLine: Definition Conflicts with previous value.
//        print(" Some errorMessage")
//        return
//    }
//    print(blogName)
}
someFunc(blog: "hello world")

//if-let
var str : String?
str = "hello morning"
if let blogName1 = str {
   print(blogName1) // You don't get any errors!
}

//NSMutable vs NSArray

