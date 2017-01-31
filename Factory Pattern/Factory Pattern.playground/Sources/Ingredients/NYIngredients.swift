import Foundation

public struct NYIngredients: IngredientFactory {
   public var dough: Dough
   public var sauce: Sauce
   public var cheese: Cheese
   public var veggies: [Veggie]
   public var fruits: [Fruit]
   public var pepperoni: Pepperoni
   public var ham: Ham
   public init() {
      dough = .thin
      sauce = .marinera
      cheese = .reggiano
      veggies = [.mushrooms, .onions]
      pepperoni = .freshSlicedPepperoni
      ham = .freshHam
      fruits = [.cannedPineapple]
   }
}

