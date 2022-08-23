// Closures are special type of func without func name

// syntax:
//{ (parameters) -> returnType in
//   // statements
//}
// where in -> used to seperate stmts

var greet = {
  print("Hello, World!")
}
greet()

//Closure with param and return value
// closure definition
var findSquare = { (num: Int) -> (Int) in
  let square = num * num
  return square
}
var result = findSquare(3)
print("Square:",result) // 9

//closure as func param
func grabLunch(search: ()->()) {
  print("Let's go out for lunch")
  search()
}
grabLunch(search: {
   print("Alfredo's Pizza: 2 miles away")
})

//Trailing Closure -> closure as last param in fun def, without name use func body{...} to pass closure in fun call
func grabLunch(message: String, search: ()->()) {
   print(message)
   search()
}
// use of trailing closure
grabLunch(message:"Let's go out for lunch")  { // Let's go out for lunch
  print("Dominos Pizza: 2 miles away")  // Dominos Pizza: 2 miles away
}

//Auto-closure -> pass closure without {} using @autoclosure kw in func def
// define a function with automatic closure
func display(greet: @autoclosure () -> ()) {
 greet()
}

// pass closure without {}
display(greet: print("Hello World!")) // hello world
 
