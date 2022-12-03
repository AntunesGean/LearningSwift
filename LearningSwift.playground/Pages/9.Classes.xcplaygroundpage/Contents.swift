import Foundation

class Person {
  // MARK: - Atributos
  var hair: String
  var age: Int
  var size: Double
  var name: String
  var lastName: String

  var fullName: String {
    return "\(name) \(lastName)"
  }

  // MARK: - Metodo construtor: constructor init
  init(hair: String, age: Int, size: Double, name: String, lastName: String) {
    self.hair = hair
    self.age = age
    self.size = size
    self.name = name
    self.lastName = lastName
  }
}

//var person1 = Person(hair: "Black", age: 20, size: 1.80, name: "John", lastName: "Doe")
//var person2 = Person(hair: "Brown", age: 30, size: 1.70, name: "Jane", lastName: "Doe")
//
//print(person1.fullName)
//print(person2.fullName)


class Student: Person {
  var grade: Double
  var course: String
  
  init(grade: Double, course: String, hair: String, age: Int, size: Double, name: String, lastName: String) {
    self.grade = grade
    self.course = course
    
    super.init(hair: hair, age: age, size: size, name: name, lastName: lastName)
  }
}

var student01 = Student(grade: 8.9, course: "iOS", hair: "curto", age: 27, size: 25, name: "Steve", lastName: "Jobs")

student01.fullName
