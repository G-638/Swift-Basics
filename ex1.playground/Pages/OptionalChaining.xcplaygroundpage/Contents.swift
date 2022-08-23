
// Swift Optional Chaining -> used to call properties, methods, and subscripts on an optional that might currently be nil.
class Exam {
    var student: Toppers?
}
class Toppers {
   var name = "Intelligent"
}
let stud = Exam()
if let studname = stud.student?.name {
   print("Student name is \(studname)")
} else {
   print("Student name cannot be retrieved")
}
