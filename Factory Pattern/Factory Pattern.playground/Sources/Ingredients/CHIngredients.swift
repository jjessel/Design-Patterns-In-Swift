import Foundation

public struct ChicagoIngredients: IngredientFactory {
   public var dough: Dough
   public var sauce: Sauce
   public var cheese: Cheese
   public var veggies: [Veggie]
   public var fruits: [Fruit]
   public var pepperoni: Pepperoni
   public var ham: Ham
   public init() {
      dough = .deepDish
      sauce = .plumTomato
      cheese = .mozzarella
      veggies = [.mushrooms, .onions]
      pepperoni = .freshSlicedPepperoni
      ham = .freshHam
      fruits = [.cannedPineapple]
   }
}
