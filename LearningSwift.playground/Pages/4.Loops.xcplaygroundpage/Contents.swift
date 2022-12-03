import Foundation

var count = 3

//while (count < 3) {
//    print(count)
//    count += 1
//}

//repeat {
//    print(count)
//    count += 1
//} while count < 3

            
let range = 0...4
let rangeLessLimit = 0..<4

for x in 0...count {
  print(x)
}

switch count {
  case 0:
    print(0)
  case 2:
    print(2)
  case 3..<7:
    print(3)
  default:
    print("default")
}
