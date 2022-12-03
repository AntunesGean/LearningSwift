import UIKit

let CINCO: Int = 5;

var arr: Array = [1,2,3, 4.5]

print("o número é \(CINCO) e o array é \(arr)!")

print(type(of: arr))

var test01 = 3
var test02 = 4

if (test01 == test02) {
    print("\(test01) e \(test02) são iguais!")
} else {
    print("\(test01) e \(test02) são diferentes!")
}

var arrB = [1,2,3,4,5,6]
var arrC = [4,7,8,9]

var maxB = arrB.max()
var maxC = arrC.max()

var some = maxB! + maxC!




func testeB(say: String) -> String {
    return say
}
var printa: String = testeB(say: "olá")


func testeC(_ say: String) -> String {
    return say
}
var printaC: String = testeC("olá")





let yes: Bool = true;
let no: Bool = false;

// equal ==
var oneEqualTwo = (1 == 2)

// not equal !=
var oneNotEqualTwo = (1 != 2)

// inversion !
var isTrue = !(1 == 2)

// < less than and > greater than
var isGreater = (8 > 9)
var isLess = (8 < 9)

// <= less than or equal and >= greater than or equal
var isGreaterOrEqual = (9 >= 9)
var isLessOrEqual = (8 <= 9)

// && and || or
