import Foundation

public struct Espresso: Beverage {
   public var cost: Double = 1.99
   public var description: String = "Espresso"
   public init() {}
}

public struct HouseBlend: Beverage {
   public var cost: Double = 0.89
   public var description: String = "House Blend Coffee"
   public init() {}
}

public struct Decaf: Beverage {
   public var cost: Double = 0.89
   public var description: String = "Decaf"
   public init() {}
}
