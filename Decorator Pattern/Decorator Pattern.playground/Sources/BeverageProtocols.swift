import Foundation

public protocol Beverage {
   var description: String { get }
   var cost: Double { get }
}

public protocol BeverageDecorator: Beverage {
   var beverage: Beverage { get }
   init(beverage: Beverage)
}

