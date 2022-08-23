// Variable Declaration

let maximumCount  =  10 // constant var must initialize
var currentLoginAttempt : Int? // var may be initialize latter means use "optional ?"
currentLoginAttempt = 0
print(maximumCount, currentLoginAttempt!) // optinal variable return "nil"

var v1,v2,v3: Double?// declare type for multi-variables
var v4: Int?

//Type-declaration : Int, UInt, String, Float, Double, Character, Boolean

let floatValue : Float = 2.34 // 32-bit -float
let doubleValue : Double = 2.2345364564 //64 bit -double
floatValue
doubleValue

let stringVlaue: String = "Hello World" // string
let multiLineValue: String = // multi line string
"""
hello
world
"""
let stringObject = String() // string initialize using string object.
stringObject
stringVlaue
multiLineValue

let characterValue: Character = "A" // character
characterValue

let booleanValue: Bool = true;
booleanValue

//Type-Aliases
typealias Feet = Int
let newType: Feet = 2

// Type-safety
var a = 2; // automatically takes integer type
// a="hello" // cannot assign other type values to "a"

// Type-Inference
var a1=10 // type Integer
var b1=2.2 // type float
var c = 2 + 2.2 // automatically converts "c" to double type
c

// Numeric-Type conversion
var c1 = Double(a1) + b1 // Integer to floating-point conversion
c1
//print(c1) // "c1" automatically takes Double type - > type-inference

let pi = 3.14
let intPi = Int(pi) // floating-point integer conversion

let data = String(pi)
data
// operators -> unary, binary, ternary
// Decision making -> if, if..else, else-if ladder, nested if. (break, continue, fallthrough, guard)
// loops or control flow -> for-in loop, while loop, repeate-while loop


//Guard stmt -> substitute of Swift if statement

// syntax : guard expression else {} - > expression == false - > execute insode guard stmt.

//eg:
guard true else {
    print("Condition is not satisfied.")
}
print("Condition is satisfied.")

