// Struct

struct User {
  let firstName: String
  let lastName: String
  var email: String
  var isActive: Bool
  
  var fullName: String {
    return "\(firstName) \(lastName)"
  }
  
  func printFullName() {
    print(fullName)
  }
  
  mutating func activeUser() {
    isActive = true
  }
}

var user = User(firstName: "Carlos", lastName: "Carmo", email: "gmail@gmail.com", isActive: false)

print(user.firstName)
print(user.fullName)

user.printFullName()

user.email = "email@email.com"
print(user.email)

user.activeUser()
print(user.isActive)
