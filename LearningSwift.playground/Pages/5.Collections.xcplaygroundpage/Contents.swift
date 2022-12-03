var players: [String] = ["Carlos", "Henrique", "João", "Sandra"] // Array

if (players.count < 5) {
  print("menor que 5")
} else {
  print("maior que 5")
}

print(players.count)

var firstPlayer = players[1]

var firstPlayer2 = players.first
var lastPlayer = players.last

var num = [0,1,2,3]

var minNum = num.min()
var maxNum = num.max()

num[1...3]
num[1..<3]

num.count - 1


// modificando o array

// adicionando elementos
num.append(4)
num += [5]
num.insert(6, at: 1)

// removendo elementos
num.removeFirst()
num.removeLast()
num.remove(at: 2)

var getIndexNumber = num.firstIndex(of: 3)

if let getIndexNumber = getIndexNumber {
  num.remove(at: getIndexNumber)
}

print("Depois: ", num)

// atualizando elementos

print(players)

players[2] = "Maria"
players[0...2] = ["Joana", "Pedro", "Jose"]

print(players)

// movendo elementos

//let playerMove = players.remove(at: 1) // duas linhas de código
//players.insert(playerMove, at: 0)

players.swapAt(0, 1) // uma linha de código

// outro exemplo
var indexNewFirst = players.firstIndex(of: "Jose")
var indexOtherPlayer = players.firstIndex(of: "Pedro")

if let indexNewFirst = indexNewFirst, let indexOtherPlayer = indexOtherPlayer {
  players.swapAt(indexNewFirst, indexOtherPlayer)
}

print(players)

players.sort() // ordem alfabética

for player in players {
  print(player)
}


// Dictionary

//var player: [String] = ["Joao", "Maria", "Jose"] -> Array
var player: [String: Double] = ["Joao": 10.1, "Maria": 12.5, "Jose": 25.2]

print(player["Maria"]!) // uso do ! para desembrulhar(unwrapped) a var. Force read

if let pointsPlayer = player["Maria"] { // maneira mais usual sem o uso do !
  print(pointsPlayer)
}

// player["Maria"] = nil // remover elemento v1
player.removeValue(forKey: "Maria") // remover elemento v2

// player = [:] // limpar ele
// player.isEmpty // esvaziar ele
// player.count // contar elementos

print(player)

// adicionar chave ou valor
// player["Joao"] = 20.2 // v1
let oldPoints = player.updateValue(20.2, forKey: "Joao")

if let oldPoints = oldPoints {
  print(oldPoints)
}

print(player)

//for (play, points) in player {
//  print("player: \(play) - points: \(points)")
//}

for play in player.keys {
  print("player: \(play)")
}

for points in player.values {
  print("points: \(points)")
}

