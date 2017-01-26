import Foundation

protocol Dog {
   var jumpBehavior: JumpBehavior { get set }
   var barkBehavior: BarkBehavior { get set }
   func description()
}

extension Dog {

   public func jump() {
      jumpBehavior.jump()
   }
   
   public func speak() {
      barkBehavior.bark()
   }
   
   public mutating func setJumpBehavior(_ jb: JumpBehavior) {
      jumpBehavior = jb
   }
   
   public mutating func setBarkBehavior(_ bb: BarkBehavior) {
      barkBehavior = bb
   }
}
