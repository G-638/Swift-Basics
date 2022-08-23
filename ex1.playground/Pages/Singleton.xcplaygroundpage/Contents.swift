// Singleton - > design pattern that ensures a class can have only one object

// Rules -> 1. Create a private initializer 2. Create static type Singleton Object


class FileManager{
 // create a singleton
 static let fileObj = FileManager()
 // create a private initializer
private init() {
}

func checkFileAccess(user: String) {
  if user == ("@calibraint.com") {
    print("Access Granted")
  }
  else {
    print(" Access Denied")
  }
}
}

let userName = "@calibraint.com"

// access method
let file = FileManager.fileObj

file.checkFileAccess(user: userName)
