import Foundation

public struct DogDrawing: Dog {
   
   internal var jumpBehavior: JumpBehavior
   internal var barkBehavior: BarkBehavior
   
   public init() {
      jumpBehavior = JumpNone()
      barkBehavior = BarkNone()
   }

   public func description() {
      print("I am a drawing of a dog")
   }
   
}
