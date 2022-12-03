// Extension

import Foundation

class Person {
  var hair: String
  var age: Int
  var size: Double
  var name: String
  var lastName: String

  init(hair: String, age: Int, size: Double, name: String, lastName: String) {
    self.hair = hair
    self.age = age
    self.size = size
    self.name = name
    self.lastName = lastName
  }
}

// MARK: - extension = adiciona func na class

extension Person {
  func getFullName() -> String {
    return "\(name) \(lastName)"
  }
}

var person = Person(hair: "curto", age: 37, size: 1.75, name: "Gean", lastName: "Antunes")

print(person.getFullName())

extension String {
  func replace(target: String, withString: String) -> String {
    return self.replacingOccurrences(of: target, with: withString)
  }
  
  var length: Int {
    get {
      return self.count
    }
  }
}


let newString = "the old String".self.replace(target: "old", withString: "new")

print(newString)
print(newString.length)
print(newString.count)
