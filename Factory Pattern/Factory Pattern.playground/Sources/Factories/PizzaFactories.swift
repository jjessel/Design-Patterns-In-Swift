import Foundation

public protocol PizzaFactory {
   var ingredientFactory: IngredientFactory { get }
   func order(_ pizza: PizzaType) -> Pizza
   func create(_ pizzatype: PizzaType) -> Pizza
}

extension PizzaFactory {
   public func order(_ type: PizzaType) -> Pizza {
      let pizza = create(type)
      pizza.prepare()
      pizza.bake()
      pizza.cut()
      pizza.box()
      return pizza
   }
   

}

public struct NYPizzaStore: PizzaFactory {
   public var ingredientFactory: IngredientFactory
   
   public init() {
      self.ingredientFactory = NYIngredients()
   }
   public func create(_ pizzatype: PizzaType) -> Pizza {
      var pizza: Pizza
      switch pizzatype {
      case .cheese:
         pizza = CheesePizza(with: ingredientFactory)
         pizza.name = "NY Style Cheese Pizza"
      case .hawaiian:
         pizza = HawaiianPizza(with: ingredientFactory)
         pizza.name = "NY Style Hawaiian Pizza"
      case .pepperoni:
         pizza = PepperoniPizza(with: ingredientFactory)
         pizza.name = "NY Style Pepperoni Pizza"
         return pizza
      case .veggie:
         pizza = VeggiePizza(with: ingredientFactory)
         pizza.name = "NY Style Veggie Pizza"
      }
      return pizza
   }
   
}

public struct ChicagoPizzaStore: PizzaFactory {
   public var ingredientFactory: IngredientFactory
   public init() {
      ingredientFactory = ChicagoIngredients()
   }
   public func create(_ pizzatype: PizzaType) -> Pizza {
      var pizza: Pizza
      switch pizzatype {
      case .cheese:
         pizza = CheesePizza(with: ingredientFactory)
         pizza.name = "Chicago Style Cheese Pizza"
      case .hawaiian:
         pizza = HawaiianPizza(with: ingredientFactory)
         pizza.name = "Chicago Style Hawaiian Pizza"
      case .pepperoni:
         pizza = PepperoniPizza(with: ingredientFactory)
         pizza.name = "Chicago Style Pepperoni Pizza"
         return pizza
      case .veggie:
         pizza = VeggiePizza(with: ingredientFactory)
         pizza.name = "Chicago Style Veggie Pizza"
      }
      return pizza
   }
}
