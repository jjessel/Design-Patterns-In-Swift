import Foundation

public enum Dough {
   case thin, thick, deepDish
}

public enum Sauce {
   case marinera, alfredo, plumTomato
}

public enum Cheese: String {
   case mozzarella, reggiano
}

public enum Pepperoni {
   case frozenPepperoni, freshSlicedPepperoni
}
public enum Ham {
   case freshHam
}
public enum Veggie: String {
   case mushrooms, onions
}

public enum Fruit: String {
   case cannedPineapple, freshPineapple
}

public enum Toppings: String {
   case mozzarella, reggiano, pepperoni, mushrooms, onions, ham, pineapple
}

public protocol IngredientFactory {
   var dough: Dough { get }
   var sauce: Sauce { get }
   var cheese: Cheese { get }
   var veggies: [Veggie] { get }
   var pepperoni: Pepperoni { get }
   var ham: Ham { get }
   var fruits: [Fruit] { get }
}
