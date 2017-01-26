import Foundation

public protocol BarkBehavior {
   func bark()
}

public struct BarkLoud: BarkBehavior {
   public init() {}
   public func bark() {
      print("Loud bark!")
   }
}

public struct BarkQuiet: BarkBehavior {
   public init() {}
   public func bark() {
      print("Quiet bark!")
   }
}

public struct BarkNone: BarkBehavior {
   public init() {}
   public func bark() {
      print("I can't bark.")
   }
}
