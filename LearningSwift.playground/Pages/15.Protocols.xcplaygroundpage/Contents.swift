import Foundation

enum Direction {
  case left
  case right
}

protocol Vehicle {
  func accelerate()
  func stop()
  func turn(_ direction: Direction)
  
  var name: String { get set }
  
  init(initialVehicle: String)
}

class Bike: Vehicle {
  var peddling = false
  var brakesApplied = false
  var name: String
  var direction: Direction
  
  required init(initialVehicle: String) {
    name = initialVehicle
    direction = .right
  }
  
  func accelerate() {
    print("accelerar")
    peddling = true
    brakesApplied = false
  }
  
  func stop() {
    print("parar")
    brakesApplied = true
    peddling = false
  }
  
  func turn(_ direction: Direction) {
    self.direction = direction
  }
}

var bike = Bike(initialVehicle: "Caloi")
bike.accelerate()
bike.turn(.right)
print(bike.peddling)
