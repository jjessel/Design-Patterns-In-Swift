import Foundation

public struct CheesePizza: Pizza {
   public var name: String
   public var dough: Dough
   public var sauce: Sauce
   public var cheese: Cheese
   public var pepperoni: Pepperoni?
   public var ham: Ham?
   public var veggies: [Veggie]?
   public var fruits: [Fruit]?
   
   public init(with ingredientFactory: IngredientFactory) {
      name = "Cheese Pizza"
      dough = ingredientFactory.dough
      sauce = ingredientFactory.sauce
      cheese = ingredientFactory.cheese
   }
   
   public func prepare() {
      print("Preparing \(name)")
      print("Tossing dough...")
      print("Adding sauce...")
      print("Adding cheese")
   }
}

public struct PepperoniPizza: Pizza {
   public var name: String
   public var dough: Dough
   public var sauce: Sauce
   public var cheese: Cheese
   public var veggies: [Veggie]?
   public var pepperoni: Pepperoni?
   public var ham: Ham?
   public var fruits: [Fruit]?
   
   public init(with ingredientFactory: IngredientFactory) {
      name = "Pepperoni Pizza"
      dough = ingredientFactory.dough
      sauce = ingredientFactory.sauce
      cheese = ingredientFactory.cheese
      pepperoni = ingredientFactory.pepperoni
   }
   
   public func prepare() {
      print("Preparing \(name)")
      print("Tossing dough...")
      print("Adding sauce...")
      print("Adding cheese...")
      print("Adding pepperoni")
   }
}

public struct HawaiianPizza: Pizza {
   public var name: String
   public var dough: Dough
   public var sauce: Sauce
   public var cheese: Cheese
   public var veggies: [Veggie]?
   public var pepperoni: Pepperoni?
   public var ham: Ham?
   public var fruits: [Fruit]?
   
   public init(with ingredientFactory: IngredientFactory) {
      name = "Hawaiian Pizza"
      dough = ingredientFactory.dough
      sauce = ingredientFactory.sauce
      cheese = ingredientFactory.cheese
      ham = ingredientFactory.ham
      fruits = ingredientFactory.fruits
   }
   
   public func prepare() {
      print("Preparing \(name)")
      print("Tossing dough...")
      print("Adding sauce...")
      print("Adding cheese...")
      print("Adding ham...")
      print("Adding pineapple...")
   }
}

public struct VeggiePizza: Pizza {
   public var name: String
   public var dough: Dough
   public var sauce: Sauce
   public var cheese: Cheese
   public var veggies: [Veggie]?
   public var pepperoni: Pepperoni?
   public var ham: Ham?
   public var fruits: [Fruit]?
   
   public init(with ingredientFactory: IngredientFactory) {
      name = "Veggie Pizza"
      dough = ingredientFactory.dough
      sauce = ingredientFactory.sauce
      cheese = ingredientFactory.cheese
      veggies = ingredientFactory.veggies
   }
   
   public func prepare() {
      print("Preparing \(name)")
      print("Tossing dough...")
      print("Adding sauce...")
      print("Adding cheese...")
      print("Adding veggies:")
      for veggie in veggies! {
         print("   \(veggie.rawValue)")
      }
   }
}

