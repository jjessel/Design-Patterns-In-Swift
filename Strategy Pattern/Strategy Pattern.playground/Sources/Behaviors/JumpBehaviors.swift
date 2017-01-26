import Foundation

public protocol JumpBehavior {
    func jump()
}

public struct JumpHigh: JumpBehavior {
   public init() {}
   public func jump() {
      print("I'm jumping high.")
   }
}

public struct JumpLow: JumpBehavior {
   public init() {}
   public func jump() {
      print("I'm jumping low.")
   }
}

public struct JumpNone: JumpBehavior {
   public init() {}
   public func jump() {
      print("I can't jump")
   }
}



