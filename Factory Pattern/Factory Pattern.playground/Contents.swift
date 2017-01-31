//: Factory Pattern

import Foundation

var nyStore = NYPizzaStore()
var nyPizza = nyStore.order(.hawaiian)
print("You ordered a \(nyPizza.name)")

var chStore = ChicagoPizzaStore()
var chPizza = chStore.order(.cheese)