import Foundation


public struct Mocha: BeverageDecorator {
   public var beverage: Beverage
   public var description: String
   public var cost: Double
   
   public init(beverage: Beverage) {
      self.beverage = beverage
      self.description = "\(beverage.description) Mocha"
      self.cost = beverage.cost + 0.20
   }
}

public struct Whip: BeverageDecorator {
   public var beverage: Beverage
   public var description: String
   public var cost: Double
   
   public init(beverage: Beverage) {
      self.beverage = beverage
      self.description = "\(beverage.description) Whip"
      self.cost = beverage.cost + 0.10
   }
}

public struct Soy: BeverageDecorator {
   public var beverage: Beverage
   public var description: String
   public var cost: Double
   
   public init(beverage: Beverage) {
      self.beverage = beverage
      self.description = "\(beverage.description) Soy"
      self.cost = beverage.cost + 0.15
   }
}

