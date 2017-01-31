import Foundation



public enum PizzaType {
   case cheese, pepperoni, hawaiian, veggie
}

public protocol Pizza {
   var name: String { get set }
   var dough: Dough { get }
   var sauce: Sauce { get }
   var veggies: [Veggie]? { get }
   var cheese: Cheese { get }
   var pepperoni: Pepperoni? { get }
   var ham: Ham? { get }
   var fruits: [Fruit]? { get }
   init(with ingredientFactory: IngredientFactory)
   func prepare() 
}

extension Pizza {
   
   func bake() {
      print("Bake for 20 minutes at 375 degrees")
   }
   
   func cut() {
      print("Cut into diagonal slices")
   }
   
   func box() {
      print("Put into pizza box")
   }
}



