// ARC - Automatic Reference Counting - gerenciar a memoria

import Foundation

class Recipe {
  let title: String
  unowned let cooker: Cooker // unowned se usa quando a variável é obrigatoria
  weak var chef: Chef? // weak obrigatoriamente precisa ser opcional a variável
  
  init(title: String, cooker: Cooker) {
    self.title = title
    self.cooker = cooker
  }
  
  // lazy(preguiçosa) só vai ler quando for chamada
  lazy var description: () -> String = {
    [weak self] in // uso de weak em clojures para opcionais
    "\(String(describing: self?.title)) by \(String(describing: self?.cooker.name))"
    // apenas de exemplo. Como está é uma má prática
  }
  
  deinit {
    print("Goodbye Recipe \(title)")
  }
}

class Chef {
  let name: String
  var recipes: [Recipe] = []
  
  init(name: String) {
    self.name = name
  }
  
  deinit {
    print("Goodbye Chef \(name)")
  }
}

class Cooker {
  let name: String
  var recipes: [Recipe] = []
  
  init(name: String) {
    self.name = name
  }
  
  deinit {
    print("Goodbye Cooker \(name)")
  }
}

let description: () -> String

do {
  let cooker = Cooker(name: "Pedro")
  let recipe = Recipe(title: "Gerenciando memória", cooker: cooker)
  
  description = recipe.description
}
print(description())
