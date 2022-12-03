// Polimorfismo

func addNums(a: Int, b: Int) -> Int {
  return a + b
}

func addNums(a: Int, b: Int, c: Int) -> Int {
  return a + b + c
}

print(addNums(a: 10, b: 20))
print(addNums(a: 10, b: 20, c:30))


// Polimorfismo de runtime

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

var animal: Animal = Cat()
animal.makenoise()

animal = Dog()
animal.makenoise()

var animalAll: Animal = Animal()
animalAll.makenoise()
