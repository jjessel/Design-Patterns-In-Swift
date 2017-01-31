import Foundation


public class Single {
   public static var sharedInstance: Single = Single()
   public var number: Int
   
   private init() {
      number = 0
   }
}
