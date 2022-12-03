import Foundation

// MARK: - Class = Type Reference

//class Animal {
//  var name: String
//
//  init(name: String) {
//    self.name = name
//  }
//}
//
//var dog = Animal(name: "dog")
//var cat = dog // adiciona a referência para a mesma de dog.
//
//print(dog.name)
//print(cat.name)
//
//dog.name = "bird"
//
//print(cat.name)

// MARK: - Struct = Type Value

struct Animal {
  var name: String
  
  init(name: String) {
    self.name = name
  }
}

var dog = Animal(name: "dog")
var cat = dog // copia o valor para a nova variável

print(dog.name)
print(cat.name)

dog.name = "bird"

print(cat.name)
