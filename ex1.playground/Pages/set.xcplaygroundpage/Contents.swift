var student : Set<Int> = []
var student1 = Set<Int>() // empty array
print(student,student1)
var studentID : Set = [112, 114, 116, 118, 115]
var languages: Set = ["Swift", "Java", "Python"]

//studentID[0]

// Set methods
studentID.insert(120)
studentID.remove(115)

languages.removeFirst()
languages.removeAll()

languages.sorted()

studentID.forEach { value in
    print(value)
}

studentID.randomElement()
studentID.firstIndex(of: 120)
print(studentID)

studentID.isEmpty // false


//set Operations - union, intersection, subtracting, symmetricDifference

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0,1, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddDigits.intersection(evenDigits).sorted()
// []
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
// [1, 9]
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
// [1, 2, 9]


// Set Membership and Equality

let setA: Set = [1, 2, 3, 5, 4]
let setB: Set = [1, 2]
let setC: Set = [7, 6]

print("Subset: ", setB.isSubset(of: setA)) // true
print("SuperSet: ", setA.isSuperset(of: setB)) // true
print("disjoint: ", setA.isDisjoint(with: setC)) //true


