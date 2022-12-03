// Type Casting

class Animal {
  
  func makenoise() {
    print("graw!")
  }
}

class Cat: Animal {
  
  override func makenoise() {
    print("Miau!")
  }
}

class Dog: Animal {
  
  override func makenoise() {
    print("Au au au!")
  }
}

let pets = [Dog(), Cat(), Dog(), Dog(), Cat()]

for pet in pets {
  if let dog = pet as? Dog {
    dog.makenoise()
  }
}
