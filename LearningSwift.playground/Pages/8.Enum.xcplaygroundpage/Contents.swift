// Enum

enum MoveDirection: Int {
  case forward = 1
  case back
  case left
  case right
}

var move = MoveDirection.left
print(move.rawValue)

func doMove(_ movemente: MoveDirection) {
  switch move {
  case .forward:
    print("movemos para frente")
  case .back:
    print("movemos para trás")
  case .left:
    print("movemos para esquerda")
  case .right:
    print("movemos para direita")
  }
}

doMove(.left)


enum Medir {
  case peso(Double)
  case idade(Int)
  case tamanho(width: Double, heigth: Double)
}

var medir01 = Medir.tamanho(width: 19, heigth: 20)
var medir02 = Medir.peso(90)

func printEnum(_ medir: Medir) {
  switch medir {
  case .peso(let weigth):
    print("o peso é: \(weigth)")
  case .idade(let age):
    print("a idade é: \(age)")
  case .tamanho(let width, let heigth):
    print("a altura é: \(heigth), e a largura é: \(width)")
  }
}

printEnum(medir01)
printEnum(medir02)
